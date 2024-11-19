//
//  GetWebAppLinkUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Returns an HTTPS URL of a Web App to open after a link of the type internalLinkTypeWebApp is clicked
public struct GetWebAppLinkUrl: Codable, Equatable, Hashable {

    /// Pass true if the current user allowed the bot to send them messages
    public let allowWriteAccess: Bool?

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// Identifier of the chat in which the link was clicked; pass 0 if none
    public let chatId: Int64?

    /// Parameters to use to open the Web App
    public let parameters: WebAppOpenParameters?

    /// Start parameter from internalLinkTypeWebApp
    public let startParameter: String?

    /// Short name of the Web App
    public let webAppShortName: String?


    public init(
        allowWriteAccess: Bool?,
        botUserId: Int64?,
        chatId: Int64?,
        parameters: WebAppOpenParameters?,
        startParameter: String?,
        webAppShortName: String?
    ) {
        self.allowWriteAccess = allowWriteAccess
        self.botUserId = botUserId
        self.chatId = chatId
        self.parameters = parameters
        self.startParameter = startParameter
        self.webAppShortName = webAppShortName
    }
}

