//
//  GetChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b393215d
//  https://github.com/tdlib/td/tree/b393215d
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

