//
//  RecommendedChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
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

