//
//  ChatFolderName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Describes name of a chat folder
public struct ChatFolderName: Codable, Equatable, Hashable {

    /// True, if custom emoji in the name must be animated
    public let animateCustomEmoji: Bool

    /// The text of the chat folder name; 1-12 characters without line feeds. May contain only CustomEmoji entities
    public let text: FormattedText


    public init(
        animateCustomEmoji: Bool,
        text: FormattedText
    ) {
        self.animateCustomEmoji = animateCustomEmoji
        self.text = text
    }
}

