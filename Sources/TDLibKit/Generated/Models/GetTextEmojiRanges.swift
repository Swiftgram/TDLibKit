//
//  GetTextEmojiRanges.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
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

