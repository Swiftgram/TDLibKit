//
//  GetChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
//

import Foundation


/// Returns information about a chat filter by its identifier
public struct GetChatFilter: Codable, Equatable {

    /// Chat filter identifier
    public let chatFilterId: Int?


    public init(chatFilterId: Int?) {
        self.chatFilterId = chatFilterId
    }
}

