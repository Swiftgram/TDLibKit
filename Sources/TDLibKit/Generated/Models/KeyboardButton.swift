//
//  KeyboardButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-19cde80f
//  https://github.com/tdlib/td/tree/19cde80f
//

import Foundation


/// Represents a single button in a bot keyboard
public struct KeyboardButton: Codable, Equatable {

    /// Text of the button
    public let text: String

    /// Type of the button
    public let type: KeyboardButtonType


    public init(
        text: String,
        type: KeyboardButtonType
    ) {
        self.text = text
        self.type = type
    }
}

