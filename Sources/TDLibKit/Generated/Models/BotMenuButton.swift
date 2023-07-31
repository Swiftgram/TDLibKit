//
//  BotMenuButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-6a6cd8af
//  https://github.com/tdlib/td/tree/6a6cd8af
//

import Foundation


/// Describes a button to be shown instead of bot commands menu button
public struct BotMenuButton: Codable, Equatable, Hashable {

    /// Text of the button
    public let text: String

    /// URL to be passed to openWebApp
    public let url: String


    public init(
        text: String,
        url: String
    ) {
        self.text = text
        self.url = url
    }
}

