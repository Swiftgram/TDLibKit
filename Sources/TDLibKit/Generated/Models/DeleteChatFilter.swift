//
//  DeleteChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Deletes existing chat filter
public struct DeleteChatFilter: Codable {

    /// Chat filter identifier
    public let chatFilterId: Int


    public init(chatFilterId: Int) {
        self.chatFilterId = chatFilterId
    }
}

