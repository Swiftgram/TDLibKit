//
//  TonCenterStreamingApiUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// Contains an HTTP URL for TON Center Streaming API
public struct TonCenterStreamingApiUrl: Codable, Equatable, Hashable {

    /// Time after which the URL expires
    public let expiresIn: Int

    /// The URL
    public let url: String


    public init(
        expiresIn: Int,
        url: String
    ) {
        self.expiresIn = expiresIn
        self.url = url
    }
}

