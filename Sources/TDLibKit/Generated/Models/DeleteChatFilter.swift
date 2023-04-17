//
//  DeleteChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Deletes existing chat filter
public struct DeleteChatFilter: Codable, Equatable {

    /// Chat filter identifier
    public let chatFilterId: Int?


    public init(chatFilterId: Int?) {
        self.chatFilterId = chatFilterId
    }
}

