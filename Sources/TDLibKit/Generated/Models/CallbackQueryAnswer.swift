//
//  CallbackQueryAnswer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-54b34e91
//  https://github.com/tdlib/td/tree/54b34e91
//

import Foundation


/// Contains a bot's answer to a callback query
public struct CallbackQueryAnswer: Codable, Equatable {

    /// True, if an alert must be shown to the user instead of a toast notification
    public let showAlert: Bool

    /// Text of the answer
    public let text: String

    /// URL to be opened
    public let url: String


    public init(
        showAlert: Bool,
        text: String,
        url: String
    ) {
        self.showAlert = showAlert
        self.text = text
        self.url = url
    }
}

