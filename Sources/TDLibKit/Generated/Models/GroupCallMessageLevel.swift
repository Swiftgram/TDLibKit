//
//  GroupCallMessageLevel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Represents a level of features for a message sent in a live story group call
public struct GroupCallMessageLevel: Codable, Equatable, Hashable {

    /// Background color for the message the RGB format
    public let backgroundColor: Int

    /// The first color used to show the message text in the RGB format
    public let firstColor: Int

    /// The maximum allowed number of custom emoji in the message text
    public let maxCustomEmojiCount: Int

    /// The maximum allowed length of the message text
    public let maxTextLength: Int

    /// The minimum number of Telegram Stars required to get features of the level
    public let minStarCount: Int64

    /// The amount of time the message of this level will be pinned, in seconds
    public let pinDuration: Int

    /// The second color used to show the message text in the RGB format
    public let secondColor: Int


    public init(
        backgroundColor: Int,
        firstColor: Int,
        maxCustomEmojiCount: Int,
        maxTextLength: Int,
        minStarCount: Int64,
        pinDuration: Int,
        secondColor: Int
    ) {
        self.backgroundColor = backgroundColor
        self.firstColor = firstColor
        self.maxCustomEmojiCount = maxCustomEmojiCount
        self.maxTextLength = maxTextLength
        self.minStarCount = minStarCount
        self.pinDuration = pinDuration
        self.secondColor = secondColor
    }
}

