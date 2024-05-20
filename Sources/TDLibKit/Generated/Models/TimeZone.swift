//
//  TimeZone.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a time zone
public struct TimeZone: Codable, Equatable, Hashable, Identifiable {

    /// Unique time zone identifier
    public let id: String

    /// Time zone name
    public let name: String

    /// Current UTC time offset for the time zone
    public let utcTimeOffset: Int


    public init(
        id: String,
        name: String,
        utcTimeOffset: Int
    ) {
        self.id = id
        self.name = name
        self.utcTimeOffset = utcTimeOffset
    }
}

