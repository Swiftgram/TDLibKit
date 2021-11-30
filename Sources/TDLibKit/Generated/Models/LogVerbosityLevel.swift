//
//  LogVerbosityLevel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-e79ec946
//  https://github.com/tdlib/td/tree/e79ec946
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

