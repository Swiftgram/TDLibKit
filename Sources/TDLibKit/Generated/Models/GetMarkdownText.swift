//
//  GetMarkdownText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-21d5184e
//  https://github.com/tdlib/td/tree/21d5184e
//

import Foundation


/// Replaces text entities with Markdown formatting in a human-friendly format. Entities that can't be represented in Markdown unambiguously are kept as is. Can be called synchronously
public struct GetMarkdownText: Codable, Equatable, Hashable {

    /// The text
    public let text: FormattedText?


    public init(text: FormattedText?) {
        self.text = text
    }
}

