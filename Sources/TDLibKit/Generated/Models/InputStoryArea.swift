//
//  InputStoryArea.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.53-bdec6af5
//  https://github.com/tdlib/td/tree/bdec6af5
//

import Foundation


/// Describes a clickable rectangle area on a story media to be added
public struct InputStoryArea: Codable, Equatable, Hashable {

    /// Position of the area
    public let position: StoryAreaPosition

    /// Type of the area
    public let type: InputStoryAreaType


    public init(
        position: StoryAreaPosition,
        type: InputStoryAreaType
    ) {
        self.position = position
        self.type = type
    }
}

