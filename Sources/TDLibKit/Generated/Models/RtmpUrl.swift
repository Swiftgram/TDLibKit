//
//  RtmpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-d581e049
//  https://github.com/tdlib/td/tree/d581e049
//

import Foundation


/// Represents an RTMP url
public struct RtmpUrl: Codable, Equatable {

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

