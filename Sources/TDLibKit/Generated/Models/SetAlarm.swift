//
//  SetAlarm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-91aa6c9e
//  https://github.com/tdlib/td/tree/91aa6c9e
//

import Foundation


/// Succeeds after a specified amount of time has passed. Can be called before initialization
public struct SetAlarm: Codable, Equatable, Hashable {

    /// Number of seconds before the function returns
    public let seconds: Double?


    public init(seconds: Double?) {
        self.seconds = seconds
    }
}

