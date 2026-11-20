//
//  InputStoryArea.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
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

