//
//  GetGroupCallStreams.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.20-f441415d
//  https://github.com/tdlib/td/tree/f441415d
//

import Foundation


/// Returns information about available group call streams
public struct GetGroupCallStreams: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}

