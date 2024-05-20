//
//  BusinessAwayMessageSchedule.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes conditions for sending of away messages by a Telegram Business account
public indirect enum BusinessAwayMessageSchedule: Codable, Equatable, Hashable {

    /// Send away messages always
    case businessAwayMessageScheduleAlways

    /// Send away messages outside of the business opening hours
    case businessAwayMessageScheduleOutsideOfOpeningHours

    /// Send away messages only in the specified time span
    case businessAwayMessageScheduleCustom(BusinessAwayMessageScheduleCustom)


    private enum Kind: String, Codable {
        case businessAwayMessageScheduleAlways
        case businessAwayMessageScheduleOutsideOfOpeningHours
        case businessAwayMessageScheduleCustom
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .businessAwayMessageScheduleAlways:
            self = .businessAwayMessageScheduleAlways
        case .businessAwayMessageScheduleOutsideOfOpeningHours:
            self = .businessAwayMessageScheduleOutsideOfOpeningHours
        case .businessAwayMessageScheduleCustom:
            let value = try BusinessAwayMessageScheduleCustom(from: decoder)
            self = .businessAwayMessageScheduleCustom(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .businessAwayMessageScheduleAlways:
            try container.encode(Kind.businessAwayMessageScheduleAlways, forKey: .type)
        case .businessAwayMessageScheduleOutsideOfOpeningHours:
            try container.encode(Kind.businessAwayMessageScheduleOutsideOfOpeningHours, forKey: .type)
        case .businessAwayMessageScheduleCustom(let value):
            try container.encode(Kind.businessAwayMessageScheduleCustom, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Send away messages only in the specified time span
public struct BusinessAwayMessageScheduleCustom: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the away messages will stop to be sent
    public let endDate: Int

    /// Point in time (Unix timestamp) when the away messages will start to be sent
    public let startDate: Int


    public init(
        endDate: Int,
        startDate: Int
    ) {
        self.endDate = endDate
        self.startDate = startDate
    }
}

