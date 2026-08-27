//
//  InlineButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-ca58a8b2
//  https://github.com/tdlib/td/tree/ca58a8b2
//

import Foundation


/// Represents a button inside a rich message
public struct InlineButton: Codable, Equatable, Hashable {

    /// Style of the button
    public let style: ButtonStyle

    /// Text of the button; only richTexts, richTextPlain, and richTextCustomEmoji are allowed
    public let text: RichText

    /// Type of the button; must be one of inlineKeyboardButtonTypeUrl, inlineKeyboardButtonTypeLoginUrl, inlineKeyboardButtonTypeWebApp, inlineKeyboardButtonTypeCallback, inlineKeyboardButtonTypeSwitchInline, inlineKeyboardButtonTypeUser, inlineKeyboardButtonTypeCopyText. Additionally, inlineKeyboardButtonTypeCallbackWithPassword and inlineKeyboardButtonTypeDisabled may be received in incoming messages. Regular users may use only inlineKeyboardButtonTypeUrl, inlineKeyboardButtonTypeUser and inlineKeyboardButtonTypeCopyText
    public let type: InlineKeyboardButtonType


    public init(
        style: ButtonStyle,
        text: RichText,
        type: InlineKeyboardButtonType
    ) {
        self.style = style
        self.text = text
        self.type = type
    }
}

