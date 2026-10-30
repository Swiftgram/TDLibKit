//
//  InputStoryArea.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-18d36ada
//  https://github.com/tdlib/td/tree/18d36ada
//

import Foundation


/// Describes a clickable rectangle area on a story media to be added
public struct InputStoryArea: Codable, Equatable, Hashable {

    /// Position of the area
    public let position: AreaPosition

    /// Type of the area
    public let type: InputStoryAreaType


    public init(
        position: AreaPosition,
        type: InputStoryAreaType
    ) {
        self.position = position
        self.type = type
    }
}

