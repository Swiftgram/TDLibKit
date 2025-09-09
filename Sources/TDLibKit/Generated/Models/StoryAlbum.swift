//
//  StoryAlbum.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.53-bdec6af5
//  https://github.com/tdlib/td/tree/bdec6af5
//

import Foundation


/// Describes album of stories
public struct StoryAlbum: Codable, Equatable, Hashable, Identifiable {

    /// Unique identifier of the album
    public let id: Int

    /// Name of the album
    public let name: String

    /// Icon of the album; may be null if none
    public let photoIcon: Photo?

    /// Video icon of the album; may be null if none
    public let videoIcon: Video?


    public init(
        id: Int,
        name: String,
        photoIcon: Photo?,
        videoIcon: Video?
    ) {
        self.id = id
        self.name = name
        self.photoIcon = photoIcon
        self.videoIcon = videoIcon
    }
}

