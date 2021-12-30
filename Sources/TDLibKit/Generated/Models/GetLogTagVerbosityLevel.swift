//
//  GetLogTagVerbosityLevel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-ca14dfe7
//  https://github.com/tdlib/td/tree/ca14dfe7
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

