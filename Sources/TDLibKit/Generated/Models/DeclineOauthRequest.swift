//
//  DeclineOauthRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
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

