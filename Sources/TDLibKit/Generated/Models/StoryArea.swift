//
//  StoryArea.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
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

