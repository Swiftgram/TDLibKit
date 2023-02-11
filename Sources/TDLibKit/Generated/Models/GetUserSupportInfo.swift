//
//  GetUserSupportInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-6ba394fc
//  https://github.com/tdlib/td/tree/6ba394fc
//

import Foundation


/// Returns support information for the given user; for Telegram support only
public struct GetUserSupportInfo: Codable, Equatable {

    /// User identifier
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

