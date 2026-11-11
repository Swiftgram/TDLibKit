//
//  GetTextEmojiRanges.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-1f390d90
//  https://github.com/tdlib/td/tree/1f390d90
//

import Foundation


/// Returns positions of all emoji found in the text in order of their appearance. Can be called synchronously
public struct GetTextEmojiRanges: Codable, Equatable, Hashable {

    /// The text in which to look for emoji
    public let text: String?


    public init(text: String?) {
        self.text = text
    }
}

