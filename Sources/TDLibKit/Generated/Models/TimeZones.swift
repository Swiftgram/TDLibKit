//
//  TimeZones.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Contains a list of time zones
public struct TimeZones: Codable, Equatable, Hashable {

    /// A list of time zones
    public let timeZones: [TimeZone]


    public init(timeZones: [TimeZone]) {
        self.timeZones = timeZones
    }
}

