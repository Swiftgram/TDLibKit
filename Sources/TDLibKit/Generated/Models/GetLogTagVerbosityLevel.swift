//
//  GetLogTagVerbosityLevel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-4041ecb5
//  https://github.com/tdlib/td/tree/4041ecb5
//

import Foundation


/// Returns current verbosity level for a specified TDLib internal log tag. Can be called synchronously
public struct GetLogTagVerbosityLevel: Codable, Equatable {

    /// Logging tag to change verbosity level
    public let tag: String?


    public init(tag: String?) {
        self.tag = tag
    }
}

