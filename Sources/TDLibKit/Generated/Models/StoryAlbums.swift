//
//  StoryAlbums.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-07d3a097
//  https://github.com/tdlib/td/tree/07d3a097
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

