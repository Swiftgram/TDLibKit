//
//  CheckOauthRequestMatchCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Checks a match-code for an OAuth authorization request. If it fails, then the authorization request has failed. Otherwise, an authorization confirmation dialog must be shown and the link must be processed using acceptOauthRequest or declineOauthRequest
public struct CheckOauthRequestMatchCode: Codable, Equatable, Hashable {

    /// The matching code chosen by the user
    public let matchCode: String?

    /// URL of the OAuth deep link
    public let url: String?


    public init(
        matchCode: String?,
        url: String?
    ) {
        self.matchCode = matchCode
        self.url = url
    }
}

