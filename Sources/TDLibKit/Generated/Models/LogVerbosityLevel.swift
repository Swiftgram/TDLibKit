//
//  LogVerbosityLevel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-c0385078
//  https://github.com/tdlib/td/tree/c0385078
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

