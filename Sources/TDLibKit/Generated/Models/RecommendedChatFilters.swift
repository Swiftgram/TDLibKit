//
//  RecommendedChatFilters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-789b9c0a
//  https://github.com/tdlib/td/tree/789b9c0a
//

import Foundation


/// Contains a list of recommended chat filters
public struct RecommendedChatFilters: Codable, Equatable {

    /// List of recommended chat filters
    public let chatFilters: [RecommendedChatFilter]


    public init(chatFilters: [RecommendedChatFilter]) {
        self.chatFilters = chatFilters
    }
}

