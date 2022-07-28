//
//  Game.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes a game
public struct Game: Codable, Equatable {

    /// Game animation; may be null
    public let animation: Animation?

    public let description: String

    /// Game ID
    public let id: TdInt64

    /// Game photo
    public let photo: Photo

    /// Game short name. To share a game use the URL https://t.me/{bot_username}?game={game_short_name}
    public let shortName: String

    /// Game text, usually containing scoreboards for a game
    public let text: FormattedText

    /// Game title
    public let title: String


    public init(
        animation: Animation?,
        description: String,
        id: TdInt64,
        photo: Photo,
        shortName: String,
        text: FormattedText,
        title: String
    ) {
        self.animation = animation
        self.description = description
        self.id = id
        self.photo = photo
        self.shortName = shortName
        self.text = text
        self.title = title
    }
}

