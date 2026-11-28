//
//  StoryArea.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Describes a clickable rectangular area on story media
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

