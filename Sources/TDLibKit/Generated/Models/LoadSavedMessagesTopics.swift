//
//  LoadSavedMessagesTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Loads more Saved Messages topics. The loaded topics will be sent through updateSavedMessagesTopic. Topics are sorted by their topic.order in descending order. Returns a 404 error if all topics have been loaded
public struct LoadSavedMessagesTopics: Codable, Equatable, Hashable {

    /// The maximum number of topics to be loaded. For optimal performance, the number of loaded topics is chosen by TDLib and can be smaller than the specified limit, even if the end of the list is not reached
    public let limit: Int?


    public init(limit: Int?) {
        self.limit = limit
    }
}

