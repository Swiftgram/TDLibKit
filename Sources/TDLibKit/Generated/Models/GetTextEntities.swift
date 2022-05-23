//
//  GetTextEntities.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
//

import Foundation


/// Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses) contained in the text. Can be called synchronously
public struct GetTextEntities: Codable, Equatable {

    /// The text in which to look for entites
    public let text: String?


    public init(text: String?) {
        self.text = text
    }
}

