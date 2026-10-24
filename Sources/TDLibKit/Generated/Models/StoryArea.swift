//
//  StoryArea.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Describes a clickable rectangle area on a story media
public struct StoryArea: Codable, Equatable, Hashable {

    /// Position of the area
    public let position: AreaPosition

    /// Type of the area
    public let type: StoryAreaType


    public init(
        position: AreaPosition,
        type: StoryAreaType
    ) {
        self.position = position
        self.type = type
    }
}

