//
//  InputStoryAreas.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains a list of story areas to be added
public struct InputStoryAreas: Codable, Equatable, Hashable {

    /// List of input story areas. Currently, a story can have up to 10 inputStoryAreaTypeLocation, inputStoryAreaTypeFoundVenue, and inputStoryAreaTypePreviousVenue areas, up to getOption("story_suggested_reaction_area_count_max") inputStoryAreaTypeSuggestedReaction areas, and up to 1 inputStoryAreaTypeMessage area
    public let areas: [InputStoryArea]


    public init(areas: [InputStoryArea]) {
        self.areas = areas
    }
}

