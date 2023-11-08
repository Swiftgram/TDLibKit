//
//  BotMenuButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-da9afda7
//  https://github.com/tdlib/td/tree/da9afda7
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

