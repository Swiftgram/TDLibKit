//
//  ChatFolderIcon.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Represents an icon for a chat folder
public struct ChatFolderIcon: Codable, Equatable, Hashable {

    /// The chosen icon name for short folder representation; one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money", "Note", "Palette"
    public let name: String


    public init(name: String) {
        self.name = name
    }
}

