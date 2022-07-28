//
//  GetWebAppUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Returns an HTTPS URL of a Web App to open after keyboardButtonTypeWebApp button is pressed
public struct GetWebAppUrl: Codable, Equatable {

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// Preferred Web App theme; pass null to use the default theme
    public let theme: ThemeParameters?

    /// The URL from the keyboardButtonTypeWebApp button
    public let url: String?


    public init(
        botUserId: Int64?,
        theme: ThemeParameters?,
        url: String?
    ) {
        self.botUserId = botUserId
        self.theme = theme
        self.url = url
    }
}

