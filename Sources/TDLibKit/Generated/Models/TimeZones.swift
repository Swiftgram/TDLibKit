//
//  TimeZones.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
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

