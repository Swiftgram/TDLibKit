//
//  DeleteStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-203e8cf9
//  https://github.com/tdlib/td/tree/203e8cf9
//

import Foundation


/// Deletes a previously sent story
public struct DeleteStory: Codable, Equatable, Hashable {

    /// Identifier of the story to delete
    public let storyId: Int?


    public init(storyId: Int?) {
        self.storyId = storyId
    }
}

