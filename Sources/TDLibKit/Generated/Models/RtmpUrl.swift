//
//  RtmpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-470c36ce
//  https://github.com/tdlib/td/tree/470c36ce
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

