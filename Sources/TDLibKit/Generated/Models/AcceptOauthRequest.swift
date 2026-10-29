//
//  AcceptOauthRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
//

import Foundation


/// Accepts an OAuth authorization request. Returns an HTTP URL to open after successful authorization. May return an empty link if just a toast about successful login has to be shown
public struct AcceptOauthRequest: Codable, Equatable, Hashable {

    /// Pass true if the current user allowed the bot that was returned in getOauthLinkInfo, to access their phone number
    public let allowPhoneNumberAccess: Bool?

    /// Pass true if the current user allowed the bot that was returned in getOauthLinkInfo, to send them messages
    public let allowWriteAccess: Bool?

    /// The matching code chosen by the user
    public let matchCode: String?

    /// Pass data required to access the user's TON wallet via TON Connect if the current user allowed this; pass null if the access wasn't requested or the user declined access
    public let tonConnectConnectData: TonConnectConnectData?

    /// URL of the OAuth deep link
    public let url: String?


    public init(
        allowPhoneNumberAccess: Bool?,
        allowWriteAccess: Bool?,
        matchCode: String?,
        tonConnectConnectData: TonConnectConnectData?,
        url: String?
    ) {
        self.allowPhoneNumberAccess = allowPhoneNumberAccess
        self.allowWriteAccess = allowWriteAccess
        self.matchCode = matchCode
        self.tonConnectConnectData = tonConnectConnectData
        self.url = url
    }
}

