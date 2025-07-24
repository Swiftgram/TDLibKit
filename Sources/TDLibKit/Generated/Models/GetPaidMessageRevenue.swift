//
//  GetPaidMessageRevenue.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns the total number of Telegram Stars received by the current user for paid messages from the given user
public struct GetPaidMessageRevenue: Codable, Equatable, Hashable {

    /// Identifier of the user
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

