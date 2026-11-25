//
//  GetBusinessAccountStarAmount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns the Telegram Star amount owned by a business account; for bots only
public struct GetBusinessAccountStarAmount: Codable, Equatable, Hashable {

    /// Unique identifier of the business connection
    public let businessConnectionId: String?


    public init(businessConnectionId: String?) {
        self.businessConnectionId = businessConnectionId
    }
}

