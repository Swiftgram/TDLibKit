//
//  StoryAlbums.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8ff05a0e
//  https://github.com/tdlib/td/tree/8ff05a0e
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

