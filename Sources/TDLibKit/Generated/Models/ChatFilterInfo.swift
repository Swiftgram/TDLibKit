//
//  ChatFilterInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains basic information about a chat filter
public struct ChatFilterInfo: Codable, Equatable {

    /// The chosen or default icon name for short filter representation. One of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money", "Note", "Palette"
    public let iconName: String

    /// Unique chat filter identifier
    public let id: Int

    /// The title of the filter; 1-12 characters without line feeds
    public let title: String


    public init(
        iconName: String,
        id: Int,
        title: String
    ) {
        self.iconName = iconName
        self.id = id
        self.title = title
    }
}

