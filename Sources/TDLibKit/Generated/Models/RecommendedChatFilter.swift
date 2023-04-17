//
//  RecommendedChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Describes a recommended chat filter
public struct RecommendedChatFilter: Codable, Equatable {

    public let description: String

    /// The chat filter
    public let filter: ChatFilter


    public init(
        description: String,
        filter: ChatFilter
    ) {
        self.description = description
        self.filter = filter
    }
}

