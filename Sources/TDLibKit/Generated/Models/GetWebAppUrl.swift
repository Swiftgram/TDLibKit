//
//  GetWebAppUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-0ada45c3
//  https://github.com/tdlib/td/tree/0ada45c3
//

import Foundation


/// Returns an HTTPS URL of a Web App to open after keyboardButtonTypeWebApp or inlineQueryResultsButtonTypeWebApp button is pressed
public struct GetWebAppUrl: Codable, Equatable, Hashable {

    /// Short name of the application; 0-64 English letters, digits, and underscores
    public let applicationName: String?

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// Preferred Web App theme; pass null to use the default theme
    public let theme: ThemeParameters?

    /// The URL from the keyboardButtonTypeWebApp or inlineQueryResultsButtonTypeWebApp button
    public let url: String?


    public init(
        applicationName: String?,
        botUserId: Int64?,
        theme: ThemeParameters?,
        url: String?
    ) {
        self.applicationName = applicationName
        self.botUserId = botUserId
        self.theme = theme
        self.url = url
    }
}

