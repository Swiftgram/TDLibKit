//
//  Seconds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Contains a value representing a number of seconds
public struct Seconds: Codable {

    /// Number of seconds
    public let seconds: Double


    public init(seconds: Double) {
        self.seconds = seconds
    }
}

