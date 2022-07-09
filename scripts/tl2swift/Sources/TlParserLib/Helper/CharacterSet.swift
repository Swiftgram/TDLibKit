//
//  CharacterSet.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 15/09/2019.
//

import Foundation

extension CharacterSet {
    
    static var at: CharacterSet {
        return CharacterSet(charactersIn: "@")
    }
    
    static var comment: CharacterSet {
        return CharacterSet(charactersIn: "/ \n")
    }
}
