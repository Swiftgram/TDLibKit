//
//  String+Line.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 15/09/2019.
//

import Foundation

public extension String {
    
    /**
     Add empty line.
     
     - returns: String appended with empty line.
     */
    func addBlankLine() -> String {
        return addLine("")
    }
    
    /**
     Add **line** (with \n at the end).
     
     - parameter line: string to add.
     
     - returns: String appended with **line** (with \n at the end).
     */
    func addLine(_ line: String) -> String {
        let straightLine: String = line.replacingOccurrences(of: "\n", with: "")
        
        return self + straightLine + "\n"
    }
    
    /**
     Convenient wrapper for + operator.
     */
    func append(_ line: String) -> String {
        return self + line
    }
    
    /**
     Divide string into separate lines by \n
     */
    func lines() -> [String] {
        return self.components(separatedBy: "\n")
    }
    
    /**
     Indent all lines with ```tabCount``` number of tabs (tab is four spaces).
     */
    func indent(tabCount: Int = 1) -> String {
        var tab: String = ""
        for _ in 0..<tabCount {
            tab += "    "
        }
        return indent(prefix: tab)
    }
    
    /**
     Indent all lines with ```prefix```.
     */
    func indent(prefix: String) -> String {
        return
            lines()
            .map { (line: String) -> String in
                if line.isEmpty {
                    return line
                }
                return prefix + line
            }
            .joined(separator: "\n")
    }
    
}
