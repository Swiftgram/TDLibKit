//
//  GetBusinessAccountStarAmount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
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

