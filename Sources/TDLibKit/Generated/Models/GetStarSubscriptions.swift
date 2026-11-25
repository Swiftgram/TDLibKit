//
//  GetStarSubscriptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns the list of Telegram Star subscriptions for the current user
public struct GetStarSubscriptions: Codable, Equatable, Hashable {

    /// Offset of the first subscription to return as received from the previous request; use an empty string to get the first chunk of results
    public let offset: String?

    /// Pass true to receive only expiring subscriptions for which there aren't enough Telegram Stars to extend
    public let onlyExpiring: Bool?


    public init(
        offset: String?,
        onlyExpiring: Bool?
    ) {
        self.offset = offset
        self.onlyExpiring = onlyExpiring
    }
}

