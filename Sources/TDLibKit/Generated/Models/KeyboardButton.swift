//
//  KeyboardButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
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

