//
//  LogVerbosityLevel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-e86b323d
//  https://github.com/tdlib/td/tree/e86b323d
//

import Foundation


/// Contains a TDLib internal log verbosity level
public struct LogVerbosityLevel: Codable, Equatable {

    /// Log verbosity level
    public let verbosityLevel: Int


    public init(verbosityLevel: Int) {
        self.verbosityLevel = verbosityLevel
    }
}

