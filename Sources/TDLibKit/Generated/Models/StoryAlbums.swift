//
//  StoryAlbums.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
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

