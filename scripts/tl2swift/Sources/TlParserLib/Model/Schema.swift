//
//  Schema.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 22/09/2019.
//

public final class Schema {
    var classInfoes: [ClassInfo] = []
    var enumInfoes: [EnumInfo] = []
}


struct ClassInfo: Hashable {
    let name: String
    let properties: [ClassProperty]
    let description: String
    let rootName: String
    let isFunction: Bool
}

struct ClassProperty: Hashable {
    let name: String
    let type: String
    let description: String?
    let optional: Bool
}

struct EnumInfo: Hashable {
    let enumType: String
    var items: [EnumItem]
    let description: String
}

struct EnumItem: Hashable {
    let name: String
    let associatedClassName: String?
    let description: String
}
