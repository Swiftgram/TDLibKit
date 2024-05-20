//
//  GetMenuButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns menu button set by the bot for the given user; for bots only
public struct GetMenuButton: Codable, Equatable, Hashable {

    /// Identifier of the user or 0 to get the default menu button
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

