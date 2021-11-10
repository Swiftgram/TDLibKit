//
//  GetTextEntities.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses) contained in the text. Can be called synchronously
public struct GetTextEntities: Codable {

    /// The text in which to look for entites
    public let text: String?


    public init(text: String?) {
        self.text = text
    }
}

