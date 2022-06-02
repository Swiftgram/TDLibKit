//
//  Seconds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-3ae2ec38
//  https://github.com/tdlib/td/tree/3ae2ec38
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

