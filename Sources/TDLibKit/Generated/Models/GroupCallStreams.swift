//
//  GroupCallStreams.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.2-3f54c301
//  https://github.com/tdlib/td/tree/3f54c301
//

import Foundation


/// Represents a list of group call streams
public struct GroupCallStreams: Codable, Equatable {

    /// A list of group call streams
    public let streams: [GroupCallStream]


    public init(streams: [GroupCallStream]) {
        self.streams = streams
    }
}

