//
//  StoryArea.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
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

