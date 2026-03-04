//
//  DeclineOauthRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
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

