//
//  StoryAlbums.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d899ce6f
//  https://github.com/tdlib/td/tree/d899ce6f
//

import Foundation


/// Represents a list of story albums
public struct StoryAlbums: Codable, Equatable, Hashable {

    /// List of story albums
    public let albums: [StoryAlbum]


    public init(albums: [StoryAlbum]) {
        self.albums = albums
    }
}

