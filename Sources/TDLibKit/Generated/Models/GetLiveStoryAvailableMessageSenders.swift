//
//  GetLiveStoryAvailableMessageSenders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-d6debbb2
//  https://github.com/tdlib/td/tree/d6debbb2
//

import Foundation


/// Returns the list of message sender identifiers, on whose behalf messages can be sent to a live story
public struct GetLiveStoryAvailableMessageSenders: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}

