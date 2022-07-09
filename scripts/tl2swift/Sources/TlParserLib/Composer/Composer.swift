//
//  Composer.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 15/09/2019.
//

import Foundation

/**
 Abstract class responsible for composing source code.
 
 Implements header comment generation with copyright information and imports Foundation into
 generated code.
 
 Provides basic utility class structure separation, allows to override utility class filename
 generation, allows to extend imports and implement source code generation.
 */
open class Composer {
    
    /// Compose utility class source code.
    ///
    /// - Parameter entityName: Entity name used for determine the file name
    /// - Parameter projectName: Project name used for file header comment
    /// - Parameter outputDirectory: Directory where the result should be saved
    ///
    /// - Returns: `Implementation` object with utility class source code and filename.
    public func composeEntityUtilityImplementation(
        forEntityName entityName: String,
        projectName: String,
        outputDirectory: String,
        tdLibVersion: String? = nil,
        tdLibCommit: String? = nil
    ) throws -> Implementation {
        let filename: String = composeEntityUtilityFilename(entityName)
        let path: String = outputDirectory.hasSuffix("/") ? outputDirectory + filename : outputDirectory + "/" + filename
        let sourceCode: String =
            try
                composeCopyrightComment(forFilename: filename, project: projectName, tdLibVersion: tdLibVersion, tdLibCommit: tdLibCommit).addBlankLine() +
                composeImports().addBlankLine().addBlankLine() +
                composeUtilitySourceCode()
        
        return Implementation(
            filePath: path,
            sourceCode: sourceCode
        )
    }
    
    /// Compose utility class filename.
    open func composeEntityUtilityFilename(_ entityName: String) -> String {
        return "\(entityName).swift"
    }
    
    /// Compose copytight comment header.
    /// - returns: Comment with project & file names, "Generated automatically. Any changes will be lost!"
    open func composeCopyrightComment(forFilename filename: String, project: String, tdLibVersion: String? = nil, tdLibCommit: String? = nil) -> String {
        var result = ""
            .addLine("//")
            .addLine("//  \(filename)")
            .addLine("//  \(project)")
            .addLine("//")
            .addLine("//  Generated automatically. Any changes will be lost!")
            
        if let strongtdLibVersion = tdLibVersion, !strongtdLibVersion.isEmpty, let strongTdLibCommit = tdLibCommit, !strongTdLibCommit.isEmpty {
            result = result.addLine("//  Based on TDLib \(strongtdLibVersion)-\(strongTdLibCommit)")
            result = result.addLine("//  https://github.com/tdlib/td/tree/\(strongTdLibCommit)")
        } else if let strongtdLibVersion = tdLibVersion, !strongtdLibVersion.isEmpty {
            result = result.addLine("//  Based on TDLib version \(strongtdLibVersion)")
        } else if let strongTdLibCommit = tdLibCommit, !strongTdLibCommit.isEmpty {
            result = result.addLine("//  Based on TDLib commit \(strongTdLibCommit)")
            result = result.addLine("//  https://github.com/tdlib/td/tree/\(strongTdLibCommit)")
        }

        result = result.addLine("//")
        
        return result
    }
    
    /// Compose import declarations.
    /// - returns: `import Foundation` by default.
    open func composeImports() -> String {
        return ""
            .addLine("import Foundation")
    }
    
    /// Abstract method to compose utility class source code.
    /// - returns: Utility class body source code withoud class declaration.
    open func composeUtilitySourceCode() throws -> String {
        return ""
    }
    
}
