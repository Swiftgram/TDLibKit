//
//  GetWebAppUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns an HTTPS URL of a Web App to open from the side menu, a keyboardButtonTypeWebApp button, an inlineQueryResultsButtonTypeWebApp button, or an internalLinkTypeSideMenuBot link
public struct GetWebAppUrl: Codable, Equatable, Hashable {

    /// Short name of the application; 0-64 English letters, digits, and underscores
    public let applicationName: String?

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// Preferred Web App theme; pass null to use the default theme
    public let theme: ThemeParameters?

    /// The URL from a keyboardButtonTypeWebApp button, inlineQueryResultsButtonTypeWebApp button, an internalLinkTypeSideMenuBot link, or an empty when the bot is opened from the side menu
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

