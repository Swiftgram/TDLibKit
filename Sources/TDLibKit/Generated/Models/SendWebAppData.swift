//
//  SendWebAppData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-a03a9047
//  https://github.com/tdlib/td/tree/a03a9047
//

import Foundation


/// Sends data received from a keyboardButtonTypeWebApp Web App to a bot
public struct SendWebAppData: Codable, Equatable, Hashable {

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// Text of the keyboardButtonTypeWebApp button, which opened the Web App
    public let buttonText: String?

    /// The data
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

