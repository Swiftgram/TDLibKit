//
//  GetRecentlyOpenedChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-e0943d06
//  https://github.com/tdlib/td/tree/e0943d06
//

import Foundation


/// Returns recently opened chats. This is an offline method. Returns chats in the order of last opening
public struct GetRecentlyOpenedChats: Codable, Equatable, Hashable {

    /// The maximum number of chats to be returned
    public let limit: Int?


    public init(limit: Int?) {
        self.limit = limit
    }
}

