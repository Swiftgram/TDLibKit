//
//  ChatFilterInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-505fed00
//  https://github.com/tdlib/td/tree/505fed00
//

import Foundation


/// Contains basic information about a chat filter
public struct ChatFilterInfo: Codable, Equatable {

    /// The icon name for short filter representation. One of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work"
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

