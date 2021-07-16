//
//  AnswerCallbackQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Sets the result of a callback query; for bots only
public struct AnswerCallbackQuery: Codable {

    /// Time during which the result of the query can be cached, in seconds
    public let cacheTime: Int

    /// Identifier of the callback query
    public let callbackQueryId: TdInt64

    /// If true, an alert should be shown to the user instead of a toast notification
    public let showAlert: Bool

    /// Text of the answer
    public let text: String

    /// URL to be opened
    public let url: String


    public init(
        cacheTime: Int,
        callbackQueryId: TdInt64,
        showAlert: Bool,
        text: String,
        url: String
    ) {
        self.cacheTime = cacheTime
        self.callbackQueryId = callbackQueryId
        self.showAlert = showAlert
        self.text = text
        self.url = url
    }
}

