//
//  SendWebAppData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c5dfa597
//  https://github.com/tdlib/td/tree/c5dfa597
//

import Foundation


/// Sends data received from a keyboardButtonTypeWebApp web app to a bot
public struct SendWebAppData: Codable, Equatable {

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// Text of the keyboardButtonTypeWebApp button, which opened the web app
    public let buttonText: String?

    /// Received data
    public let data: String?


    public init(
        botUserId: Int64?,
        buttonText: String?,
        data: String?
    ) {
        self.botUserId = botUserId
        self.buttonText = buttonText
        self.data = data
    }
}

