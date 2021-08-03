//
//  SetAlarm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Succeeds after a specified amount of time has passed. Can be called before initialization
public struct SetAlarm: Codable {

    /// Number of seconds before the function returns
    public let seconds: Double


    public init(seconds: Double) {
        self.seconds = seconds
    }
}

