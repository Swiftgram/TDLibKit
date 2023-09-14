//
//  DeleteStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.18-e79f5409
//  https://github.com/tdlib/td/tree/e79f5409
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

