//
//  GetLogTagVerbosityLevel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Returns current verbosity level for a specified TDLib internal log tag. Can be called synchronously
public struct GetLogTagVerbosityLevel: Codable {

    /// Logging tag to change verbosity level
    public let tag: String?


    public init(tag: String?) {
        self.tag = tag
    }
}

