//
//  InlineKeyboardButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-d581e049
//  https://github.com/tdlib/td/tree/d581e049
//

import Foundation


/// Represents a single button in an inline keyboard
public struct InlineKeyboardButton: Codable, Equatable {

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

