//
//  SetLogTagVerbosityLevel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-4d90c2a2
//  https://github.com/tdlib/td/tree/4d90c2a2
//

import Foundation


/// Sets the verbosity level for a specified TDLib internal log tag. Can be called synchronously
public struct SetLogTagVerbosityLevel: Codable, Equatable, Hashable {

    /// New verbosity level; 1-1024
    public let newVerbosityLevel: Int?

    /// Logging tag to change verbosity level
    public let tag: String?


    public init(
        newVerbosityLevel: Int?,
        tag: String?
    ) {
        self.newVerbosityLevel = newVerbosityLevel
        self.tag = tag
    }
}

