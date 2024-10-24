//
//  GetMainWebApp.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-c684471b
//  https://github.com/tdlib/td/tree/c684471b
//

import Foundation


/// Returns information needed to open the main Web App of a bot
public struct GetMainWebApp: Codable, Equatable, Hashable {

    /// Short name of the current application; 0-64 English letters, digits, and underscores
    public let applicationName: String?

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// Identifier of the chat in which the Web App is opened; pass 0 if none
    public let chatId: Int64?

    /// Start parameter from internalLinkTypeMainWebApp
    public let startParameter: String?

    /// Preferred Web App theme; pass null to use the default theme
    public let theme: ThemeParameters?


    public init(
        applicationName: String?,
        botUserId: Int64?,
        chatId: Int64?,
        startParameter: String?,
        theme: ThemeParameters?
    ) {
        self.applicationName = applicationName
        self.botUserId = botUserId
        self.chatId = chatId
        self.startParameter = startParameter
        self.theme = theme
    }
}

