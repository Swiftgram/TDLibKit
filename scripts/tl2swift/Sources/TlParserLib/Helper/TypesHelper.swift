//
//  File.swift
//  
//
//  Created by Anton Glezman on 16/09/2019.
//

import Foundation

struct TypesHelper {
    
    /// Convert TL type to corresponding Swift type
    /// - Parameter tlType: TL type
    /// - Parameter optional: can be optional
    static func getType(_ tlType: String, optional: Bool = false) -> String {
        let resultType: String
        if tlType.hasPrefix("vector") {
            let startIdx = tlType.firstIndex(of: "<")  ?? tlType.startIndex
            let endIdx = tlType.lastIndex(of: ">") ?? tlType.endIndex
            let innerType = String(tlType[tlType.index(after: startIdx)..<endIdx])
            resultType = "[\(getType(innerType))]"
        } else if let primitive = mapPrimitiveType(tlType) {
            resultType = primitive
        } else {
            resultType = tlType.capitalizedFirstLetter
        }
        return optional ? "\(resultType)?" : resultType
    }
    
    private static func mapPrimitiveType(_ tlType: String) -> String? {
        let mapping = [
            "Bool": "Bool",
            "string": "String",
            "double": "Double",
            "int32": "Int",
            "int53": "Int64",
            "int64": "TdInt64", // in TDLib json int64 passes as string
            "bytes": "Data"
        ]
        return mapping[tlType]
    }
    
    /// Masking keywords for using as struct properties or parameters
    /// - returns: \`keyword\`
    static func maskSwiftKeyword(_ keyword: String) -> String {
        let keywords = ["protocol", "class", "struct", "enum", "func"]
        if keywords.contains(keyword) {
            return "`\(keyword)`"
        }
        return keyword
    }
    
}
