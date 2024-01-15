//
//  RtmpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-0f98d766
//  https://github.com/tdlib/td/tree/0f98d766
//

import Foundation


/// Represents an RTMP URL
public struct RtmpUrl: Codable, Equatable, Hashable {

    /// Stream key
    public let streamKey: String

    /// The URL
    public let url: String


    public init(
        streamKey: String,
        url: String
    ) {
        self.streamKey = streamKey
        self.url = url
    }
}

