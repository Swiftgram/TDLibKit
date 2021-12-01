//
//  RecommendedChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-5dc5b473
//  https://github.com/tdlib/td/tree/5dc5b473
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

