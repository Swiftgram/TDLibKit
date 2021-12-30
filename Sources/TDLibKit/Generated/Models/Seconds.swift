//
//  Seconds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-ca14dfe7
//  https://github.com/tdlib/td/tree/ca14dfe7
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

