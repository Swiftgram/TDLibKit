//
//  KeyboardButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
//

import Foundation


/// Represents a single button in a bot keyboard
public struct KeyboardButton: Codable, Equatable, Hashable {

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

