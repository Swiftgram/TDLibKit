//
//  GetRecentlyOpenedChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Returns recently opened chats, this is an offline request. Returns chats in the order of last opening
public struct GetRecentlyOpenedChats: Codable {

    /// The maximum number of chats to be returned
    public let limit: Int?


    public init(limit: Int?) {
        self.limit = limit
    }
}

