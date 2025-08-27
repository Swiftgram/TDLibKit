//
//  VideoChatStreams.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-5c77c469
//  https://github.com/tdlib/td/tree/5c77c469
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

