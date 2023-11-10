//
//  Seconds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-6ee64289
//  https://github.com/tdlib/td/tree/6ee64289
//

import Foundation


/// Contains a value representing a number of seconds
public struct Seconds: Codable, Equatable, Hashable {

    /// Number of seconds
    public let seconds: Double


    public init(seconds: Double) {
        self.seconds = seconds
    }
}

