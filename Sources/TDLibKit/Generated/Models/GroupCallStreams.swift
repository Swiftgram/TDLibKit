//
//  GroupCallStreams.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.33-97ded010
//  https://github.com/tdlib/td/tree/97ded010
//

import Foundation


/// Represents a list of group call streams
public struct GroupCallStreams: Codable, Equatable, Hashable {

    /// A list of group call streams
    public let streams: [GroupCallStream]


    public init(streams: [GroupCallStream]) {
        self.streams = streams
    }
}

