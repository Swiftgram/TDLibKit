//
//  GetUserSupportInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
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

