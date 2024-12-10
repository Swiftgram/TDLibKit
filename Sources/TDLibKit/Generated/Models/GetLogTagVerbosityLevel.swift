//
//  GetLogTagVerbosityLevel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Returns current verbosity level for a specified TDLib internal log tag. Can be called synchronously
public struct GetLogTagVerbosityLevel: Codable, Equatable, Hashable {

    /// Logging tag to change verbosity level
    public let tag: String?


    public init(tag: String?) {
        self.tag = tag
    }
}

