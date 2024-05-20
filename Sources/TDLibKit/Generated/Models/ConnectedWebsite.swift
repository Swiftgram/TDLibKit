//
//  ConnectedWebsite.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about one website the current user is logged in with Telegram
public struct ConnectedWebsite: Codable, Equatable, Hashable, Identifiable {

    /// User identifier of a bot linked with the website
    public let botUserId: Int64

    /// The version of a browser used to log in
    public let browser: String

    /// The domain name of the website
    public let domainName: String

    /// Website identifier
    public let id: TdInt64

    /// IP address from which the user was logged in, in human-readable format
    public let ipAddress: String

    /// Point in time (Unix timestamp) when obtained authorization was last used
    public let lastActiveDate: Int

    /// Human-readable description of a country and a region from which the user was logged in, based on the IP address
    public let location: String

    /// Point in time (Unix timestamp) when the user was logged in
    public let logInDate: Int

    /// Operating system the browser is running on
    public let platform: String


    public init(
        botUserId: Int64,
        browser: String,
        domainName: String,
        id: TdInt64,
        ipAddress: String,
        lastActiveDate: Int,
        location: String,
        logInDate: Int,
        platform: String
    ) {
        self.botUserId = botUserId
        self.browser = browser
        self.domainName = domainName
        self.id = id
        self.ipAddress = ipAddress
        self.lastActiveDate = lastActiveDate
        self.location = location
        self.logInDate = logInDate
        self.platform = platform
    }
}

