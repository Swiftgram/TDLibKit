//
//  DeclineOauthRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-ab8d769f
//  https://github.com/tdlib/td/tree/ab8d769f
//

import Foundation


/// Declines an OAuth authorization request
public struct DeclineOauthRequest: Codable, Equatable, Hashable {

    /// URL of the OAuth deep link
    public let url: String?


    public init(url: String?) {
        self.url = url
    }
}

