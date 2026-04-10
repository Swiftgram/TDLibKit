//
//  AcceptOauthRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
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

    /// URL of the OAuth deep link
    public let url: String?


    public init(
        allowPhoneNumberAccess: Bool?,
        allowWriteAccess: Bool?,
        matchCode: String?,
        url: String?
    ) {
        self.allowPhoneNumberAccess = allowPhoneNumberAccess
        self.allowWriteAccess = allowWriteAccess
        self.matchCode = matchCode
        self.url = url
    }
}

