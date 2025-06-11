//
//  GetTextEntities.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses) found in the text. Can be called synchronously
public struct GetTextEntities: Codable, Equatable, Hashable {

    /// The text in which to look for entities
    public let text: String?


    public init(text: String?) {
        self.text = text
    }
}

