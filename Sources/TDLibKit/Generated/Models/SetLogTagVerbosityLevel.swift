//
//  SetLogTagVerbosityLevel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Sets the verbosity level for a specified TDLib internal log tag. Can be called synchronously
public struct SetLogTagVerbosityLevel: Codable {

    /// New verbosity level; 1-1024
    public let newVerbosityLevel: Int

    /// Logging tag to change verbosity level
    public let tag: String


    public init(
        newVerbosityLevel: Int,
        tag: String
    ) {
        self.newVerbosityLevel = newVerbosityLevel
        self.tag = tag
    }
}

