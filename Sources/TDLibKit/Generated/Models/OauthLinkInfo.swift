//
//  OauthLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
//

import Foundation


/// Information about the OAuth authorization
public struct OauthLinkInfo: Codable, Equatable, Hashable {

    /// User identifier of a bot linked with the website
    public let botUserId: Int64

    /// The version of a browser used for the authorization
    public let browser: String

    /// A domain of the URL
    public let domain: String

    /// IP address from which the authorization is performed, in human-readable format
    public let ipAddress: String

    /// Human-readable description of a country and a region from which the authorization is performed, based on the IP address
    public let location: String

    /// True, if code matching dialog must be shown first and checkOauthRequestMatchCode must be called before acceptOauthRequest. Otherwise, checkOauthRequestMatchCode must not be called
    public let matchCodeFirst: Bool

    /// The list of codes to match; may be empty if irrelevant
    public let matchCodes: [String]

    /// Operating system the browser is running on
    public let platform: String

    /// True, if the user must be asked for the permission to share their phone number
    public let requestPhoneNumberAccess: Bool

    /// True, if the user must be asked for the permission to the bot to send them messages
    public let requestWriteAccess: Bool

    /// An HTTP URL where the user authorizes
    public let url: String

    /// Identifier of the user for which the link was generated; may be 0 if unknown. The corresponding user may be unknown. If the user is logged in the app, then they must be chosen for authorization by default
    public let userId: Int64


    public init(
        botUserId: Int64,
        browser: String,
        domain: String,
        ipAddress: String,
        location: String,
        matchCodeFirst: Bool,
        matchCodes: [String],
        platform: String,
        requestPhoneNumberAccess: Bool,
        requestWriteAccess: Bool,
        url: String,
        userId: Int64
    ) {
        self.botUserId = botUserId
        self.browser = browser
        self.domain = domain
        self.ipAddress = ipAddress
        self.location = location
        self.matchCodeFirst = matchCodeFirst
        self.matchCodes = matchCodes
        self.platform = platform
        self.requestPhoneNumberAccess = requestPhoneNumberAccess
        self.requestWriteAccess = requestWriteAccess
        self.url = url
        self.userId = userId
    }
}

