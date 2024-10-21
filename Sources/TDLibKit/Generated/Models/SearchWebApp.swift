//
//  SearchWebApp.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Returns information about a Web App by its short name. Returns a 404 error if the Web App is not found
public struct SearchWebApp: Codable, Equatable, Hashable {

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// Short name of the Web App
    public let webAppShortName: String?


    public init(
        botUserId: Int64?,
        webAppShortName: String?
    ) {
        self.botUserId = botUserId
        self.webAppShortName = webAppShortName
    }
}

