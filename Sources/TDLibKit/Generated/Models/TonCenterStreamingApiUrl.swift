//
//  TonCenterStreamingApiUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
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

