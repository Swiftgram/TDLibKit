//
//  GetMarkdownText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
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

