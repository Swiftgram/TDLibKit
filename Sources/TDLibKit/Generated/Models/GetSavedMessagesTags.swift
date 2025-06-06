//
//  GetSavedMessagesTags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Returns tags used in Saved Messages or a Saved Messages topic
public struct GetSavedMessagesTags: Codable, Equatable, Hashable {

    /// Identifier of Saved Messages topic which tags will be returned; pass 0 to get all Saved Messages tags
    public let savedMessagesTopicId: Int64?


    public init(savedMessagesTopicId: Int64?) {
        self.savedMessagesTopicId = savedMessagesTopicId
    }
}

