//
//  Implementation.swift
//  tl_parser_lib
//
//  Created by Anton Glezman on 22/09/2019.
//


import Foundation

/**
 Source code implementation.
 
 After parsing tl-schema file, `Schema` instance used to generate utilities. Generated source code of these
 utilities is organised into `Implementation` instances.
 */
public struct Implementation: Equatable {

    /**
     File path for future Swift class.
     */
    public let filePath:   String

    /**
     Source code.
     */
    public let sourceCode: String

    /**
     Initializer.
     */
    public init(filePath: String, sourceCode: String) {
        self.filePath = filePath
        self.sourceCode = sourceCode
    }

}

public func ==(left: Implementation, right: Implementation) -> Bool {
    return left.filePath   == right.filePath
        && left.sourceCode == right.sourceCode
}
