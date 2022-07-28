//
//  UserStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes the last time the user was online
public enum UserStatus: Codable, Equatable {

    /// The user status was never changed
    case userStatusEmpty

    /// The user is online
    case userStatusOnline(UserStatusOnline)

    /// The user is offline
    case userStatusOffline(UserStatusOffline)

    /// The user was online recently
    case userStatusRecently

    /// The user is offline, but was online last week
    case userStatusLastWeek

    /// The user is offline, but was online last month
    case userStatusLastMonth


    private enum Kind: String, Codable {
        case userStatusEmpty
        case userStatusOnline
        case userStatusOffline
        case userStatusRecently
        case userStatusLastWeek
        case userStatusLastMonth
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .userStatusEmpty:
            self = .userStatusEmpty
        case .userStatusOnline:
            let value = try UserStatusOnline(from: decoder)
            self = .userStatusOnline(value)
        case .userStatusOffline:
            let value = try UserStatusOffline(from: decoder)
            self = .userStatusOffline(value)
        case .userStatusRecently:
            self = .userStatusRecently
        case .userStatusLastWeek:
            self = .userStatusLastWeek
        case .userStatusLastMonth:
            self = .userStatusLastMonth
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .userStatusEmpty:
            try container.encode(Kind.userStatusEmpty, forKey: .type)
        case .userStatusOnline(let value):
            try container.encode(Kind.userStatusOnline, forKey: .type)
            try value.encode(to: encoder)
        case .userStatusOffline(let value):
            try container.encode(Kind.userStatusOffline, forKey: .type)
            try value.encode(to: encoder)
        case .userStatusRecently:
            try container.encode(Kind.userStatusRecently, forKey: .type)
        case .userStatusLastWeek:
            try container.encode(Kind.userStatusLastWeek, forKey: .type)
        case .userStatusLastMonth:
            try container.encode(Kind.userStatusLastMonth, forKey: .type)
        }
    }
}

/// The user is online
public struct UserStatusOnline: Codable, Equatable {

    /// Point in time (Unix timestamp) when the user's online status will expire
    public let expires: Int


    public init(expires: Int) {
        self.expires = expires
    }
}

/// The user is offline
public struct UserStatusOffline: Codable, Equatable {

    /// Point in time (Unix timestamp) when the user was last online
    public let wasOnline: Int


    public init(wasOnline: Int) {
        self.wasOnline = wasOnline
    }
}

