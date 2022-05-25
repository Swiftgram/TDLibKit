//
//  Seconds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c5dfa597
//  https://github.com/tdlib/td/tree/c5dfa597
//

import Foundation


/// Contains a value representing a number of seconds
public struct Seconds: Codable, Equatable {

    /// Number of seconds
    public let seconds: Double


    public init(seconds: Double) {
        self.seconds = seconds
    }
}

