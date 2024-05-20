//
//  FoundWebApp.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a Web App found by its short name
public struct FoundWebApp: Codable, Equatable, Hashable {

    /// True, if the user must be asked for the permission to the bot to send them messages
    public let requestWriteAccess: Bool

    /// True, if there is no need to show an ordinary open URL confirmation before opening the Web App. The field must be ignored and confirmation must be shown anyway if the Web App link was hidden
    public let skipConfirmation: Bool

    /// The Web App
    public let webApp: WebApp


    public init(
        requestWriteAccess: Bool,
        skipConfirmation: Bool,
        webApp: WebApp
    ) {
        self.requestWriteAccess = requestWriteAccess
        self.skipConfirmation = skipConfirmation
        self.webApp = webApp
    }
}

