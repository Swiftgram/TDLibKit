//
//  RecommendedChatFilters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
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

