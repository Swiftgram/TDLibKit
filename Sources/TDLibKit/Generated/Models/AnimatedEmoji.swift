//
//  AnimatedEmoji.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes an animated representation of an emoji
public struct AnimatedEmoji: Codable, Equatable {

    /// Emoji modifier fitzpatrick type; 0-6; 0 if none
    public let fitzpatrickType: Int

    /// File containing the sound to be played when the animated emoji is clicked; may be null. The sound is encoded with the Opus codec, and stored inside an OGG container
    public let sound: File?

    /// Animated sticker for the emoji
    public let sticker: Sticker


    public init(
        fitzpatrickType: Int,
        sound: File?,
        sticker: Sticker
    ) {
        self.fitzpatrickType = fitzpatrickType
        self.sound = sound
        self.sticker = sticker
    }
}

