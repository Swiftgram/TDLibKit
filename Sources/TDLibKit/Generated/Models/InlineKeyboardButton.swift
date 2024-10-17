//
//  InlineKeyboardButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-672f837c
//  https://github.com/tdlib/td/tree/672f837c
//

import Foundation


/// Represents a single button in an inline keyboard
public struct InlineKeyboardButton: Codable, Equatable, Hashable {

    /// Text of the button
    public let text: String

    /// Type of the button
    public let type: InlineKeyboardButtonType


    public init(
        text: String,
        type: InlineKeyboardButtonType
    ) {
        self.text = text
        self.type = type
    }
}

