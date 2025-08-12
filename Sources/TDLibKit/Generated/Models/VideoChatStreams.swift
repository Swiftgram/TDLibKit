//
//  VideoChatStreams.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Represents a list of video chat streams
public struct VideoChatStreams: Codable, Equatable, Hashable {

    /// A list of video chat streams
    public let streams: [VideoChatStream]


    public init(streams: [VideoChatStream]) {
        self.streams = streams
    }
}

