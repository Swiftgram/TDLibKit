//
//  GetGrossingWebAppBots.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Returns the most grossing Web App bots
public struct GetGrossingWebAppBots: Codable, Equatable, Hashable {

    /// The maximum number of bots to be returned; up to 100
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?


    public init(
        limit: Int?,
        offset: String?
    ) {
        self.limit = limit
        self.offset = offset
    }
}

