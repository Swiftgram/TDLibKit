//
//  GetMainWebApp.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// Returns information needed to open the main Web App of a bot
public struct GetMainWebApp: Codable, Equatable, Hashable {

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// Identifier of the chat in which the Web App is opened; pass 0 if none
    public let chatId: Int64?

    /// Parameters to use to open the Web App
    public let parameters: WebAppOpenParameters?

    /// Start parameter from internalLinkTypeMainWebApp
    public let startParameter: String?


    public init(
        botUserId: Int64?,
        chatId: Int64?,
        parameters: WebAppOpenParameters?,
        startParameter: String?
    ) {
        self.botUserId = botUserId
        self.chatId = chatId
        self.parameters = parameters
        self.startParameter = startParameter
    }
}

