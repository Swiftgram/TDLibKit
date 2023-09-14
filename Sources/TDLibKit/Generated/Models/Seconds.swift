//
//  Seconds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.18-e79f5409
//  https://github.com/tdlib/td/tree/e79f5409
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

