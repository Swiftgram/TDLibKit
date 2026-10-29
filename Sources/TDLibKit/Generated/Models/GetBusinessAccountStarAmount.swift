//
//  GetBusinessAccountStarAmount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
//

import Foundation


/// Returns the Telegram Star amount owned by a business account; for bots only
public struct GetBusinessAccountStarAmount: Codable, Equatable, Hashable {

    /// Unique identifier of business connection
    public let businessConnectionId: String?


    public init(businessConnectionId: String?) {
        self.businessConnectionId = businessConnectionId
    }
}

