//
//  GetWebAppUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Returns an HTTPS URL of a Web App to open from the side menu, a keyboardButtonTypeWebApp button, or an inlineQueryResultsButtonTypeWebApp button
public struct GetWebAppUrl: Codable, Equatable, Hashable {

    /// Identifier of the target bot. If the bot is restricted for the current user, then show an error instead of calling the method
    public let botUserId: Int64?

    /// Parameters to use to open the Web App
    public let parameters: WebAppOpenParameters?

    /// The URL from a keyboardButtonTypeWebApp button, inlineQueryResultsButtonTypeWebApp button, or an empty string when the bot is opened from the side menu
    public let url: String?


    public init(
        botUserId: Int64?,
        parameters: WebAppOpenParameters?,
        url: String?
    ) {
        self.botUserId = botUserId
        self.parameters = parameters
        self.url = url
    }
}

