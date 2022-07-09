//
//  Scanner.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 15/09/2019.
//

import Foundation

extension Scanner {
    
    func scanUpToCharactersFrom(_ set: CharacterSet) -> String? {
        var result: NSString?
        return scanUpToCharacters(from: set, into: &result) ? (result as String?) : nil
    }
    
    func scanUpTo(_ string: String) -> String? {
        var result: NSString?
        return self.scanUpTo(string, into: &result) ? (result as String?) : nil
    }
    
    func scanDouble() -> Double? {
        var double: Double = 0
        return scanDouble(&double) ? double : nil
    }
}
