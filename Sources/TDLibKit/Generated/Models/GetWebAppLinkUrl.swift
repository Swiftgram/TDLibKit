//
//  GetWebAppLinkUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns an HTTPS URL of a Web App to open after a link of the type internalLinkTypeWebApp is clicked
public struct GetWebAppLinkUrl: Codable, Equatable, Hashable {

    /// Pass true if the current user allowed the bot to send them messages
    public let allowWriteAccess: Bool?

    /// Short name of the application; 0-64 English letters, digits, and underscores
    public let applicationName: String?

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// Identifier of the chat in which the link was clicked; pass 0 if none
    public let chatId: Int64?

    /// Start parameter from internalLinkTypeWebApp
    public let startParameter: String?

    /// Preferred Web App theme; pass null to use the default theme
    public let theme: ThemeParameters?

    /// Short name of the Web App
    public let webAppShortName: String?


    public init(
        allowWriteAccess: Bool?,
        applicationName: String?,
        botUserId: Int64?,
        chatId: Int64?,
        startParameter: String?,
        theme: ThemeParameters?,
        webAppShortName: String?
    ) {
        self.allowWriteAccess = allowWriteAccess
        self.applicationName = applicationName
        self.botUserId = botUserId
        self.chatId = chatId
        self.startParameter = startParameter
        self.theme = theme
        self.webAppShortName = webAppShortName
    }
}

