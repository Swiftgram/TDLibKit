//
//  LogVerbosityLevel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-4c6377aa
//  https://github.com/tdlib/td/tree/4c6377aa
//

import Foundation


/// Contains a TDLib internal log verbosity level
public struct LogVerbosityLevel: Codable, Equatable, Hashable {

    /// Log verbosity level
    public let verbosityLevel: Int


    public init(verbosityLevel: Int) {
        self.verbosityLevel = verbosityLevel
    }
}

