//
//  IndirectEnumsEvaluator.swift
//
//

import Foundation

/// Finds enums that need indirect keyword
final class IndirectEnumsEvaluator {
    
    private var indirectEnumNames: [String] = []
    private let schema: Schema
    
    init(schema: Schema) {
        self.schema = schema
    }
    
    func evaluate() {
        let allEnumNames = schema.enumInfoes.map {
            $0.enumType.lowercased()
        }
        var classInfoesByName: [String: ClassInfo] = [:]
        for classInfo in schema.classInfoes {
            classInfoesByName[classInfo.name.lowercased()] = classInfo
        }
        var enumsByParent: [String: [String]] = [:]
        var parentEnumNames: [String] = []
        
        //populate enumsByParent where key is an enum name and value is an array of names of children enums
        //parentEnumNames helps to preserve order
        for enumInfo in schema.enumInfoes {
            let associatedClassNames: [String] = enumInfo.items.compactMap {
                return $0.associatedClassName?.lowercased()
            }
            
            let associatedClassesPropertyTypes: [String] = associatedClassNames.compactMap {
                return classInfoesByName[$0]
            }.flatMap {
                return $0.properties.map { $0.type.lowercased() }
            }
            
            let childEnumInfoNames: [String] = associatedClassesPropertyTypes.filter {
                return allEnumNames.contains($0)
            }
            
            let parentEnumName = enumInfo.enumType.lowercased()
            parentEnumNames.append(parentEnumName)
            enumsByParent[parentEnumName] = childEnumInfoNames
        }
        
        //find out if at least one child have a current enum as its child(current enum is referenced itself)
        for enumInfoName in parentEnumNames {
            let childInfoes = enumsByParent[enumInfoName] ?? []
            let cyclingChildInfo: String? = childInfoes.first {
                return enumsByParent[$0]?.contains(enumInfoName) ?? false
            }
            if let cyclingChild = cyclingChildInfo,
               !indirectEnumNames.contains(cyclingChild) {
                indirectEnumNames.append(enumInfoName)
            }
        }
    }
    
    func isIndirect(_ enumInfo: EnumInfo) -> Bool {
        let first = indirectEnumNames.first {
            $0 == enumInfo.enumType.lowercased()
        }
        return first != nil
    }
}

