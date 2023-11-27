//
//  StoryArea.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-404761c5
//  https://github.com/tdlib/td/tree/404761c5
//

import Foundation


/// Describes a clickable rectangle area on a story media
public struct StoryArea: Codable, Equatable, Hashable {

    /// Position of the area
    public let position: StoryAreaPosition

    /// Type of the area
    public let type: StoryAreaType


    public init(
        position: StoryAreaPosition,
        type: StoryAreaType
    ) {
        self.position = position
        self.type = type
    }
}

