//
//  CheckOauthRequestMatchCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-e7e457ca
//  https://github.com/tdlib/td/tree/e7e457ca
//

import Foundation


/// Checks a match-code for an OAuth authorization request. If fails, then the authorization request has failed. Otherwise, authorization confirmation dialog must be shown and the link must be processed using acceptOauthRequest or declineOauthRequest
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

