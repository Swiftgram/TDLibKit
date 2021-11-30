//
//  AnimatedEmoji.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-e79ec946
//  https://github.com/tdlib/td/tree/e79ec946
//

import Foundation


/// Describes an animated representation of an emoji
public struct AnimatedEmoji: Codable, Equatable {

    /// List of colors to be replaced while the sticker is rendered
    public let colorReplacements: [ColorReplacement]

    /// File containing the sound to be played when the animated emoji is clicked if any; may be null. The sound is encoded with the Opus codec, and stored inside an OGG container
    public let sound: File?

    /// Animated sticker for the emoji
    public let sticker: Sticker


    public init(
        colorReplacements: [ColorReplacement],
        sound: File?,
        sticker: Sticker
    ) {
        self.colorReplacements = colorReplacements
        self.sound = sound
        self.sticker = sticker
    }
}

