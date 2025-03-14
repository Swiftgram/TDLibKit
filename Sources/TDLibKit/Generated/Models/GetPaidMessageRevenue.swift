//
//  GetPaidMessageRevenue.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
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

