//
//  RecommendedChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-5a764139
//  https://github.com/tdlib/td/tree/5a764139
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

