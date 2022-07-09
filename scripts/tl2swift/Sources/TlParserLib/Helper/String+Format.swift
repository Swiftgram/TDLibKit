//
//  String+Format.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 15/09/2019.
//

import Foundation

extension String {
    
    var capitalizedFirstLetter: String {
        return prefix(1).uppercased() + self.dropFirst()
    }
    
    func underscoreToCamelCase() -> String {
        let result = self.split(separator: "_")
            .map { String($0).capitalizedFirstLetter }
            .joined()
        return result.prefix(1).lowercased() + result.dropFirst()
    }
}
