//
//  TimeZones.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8fc2344f
//  https://github.com/tdlib/td/tree/8fc2344f
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

