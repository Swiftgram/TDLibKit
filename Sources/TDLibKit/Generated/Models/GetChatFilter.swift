//
//  GetChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Returns information about a chat filter by its identifier
public struct GetChatFilter: Codable {

    /// Chat filter identifier
    public let chatFilterId: Int?


    public init(chatFilterId: Int?) {
        self.chatFilterId = chatFilterId
    }
}

