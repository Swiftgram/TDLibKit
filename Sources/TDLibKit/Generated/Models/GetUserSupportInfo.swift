//
//  GetUserSupportInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-64264b0f
//  https://github.com/tdlib/td/tree/64264b0f
//

import Foundation


/// Returns support information for the given user; for Telegram support only
public struct GetUserSupportInfo: Codable, Equatable, Hashable {

    /// User identifier
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

