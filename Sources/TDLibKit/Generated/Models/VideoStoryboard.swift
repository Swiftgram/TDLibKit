//
//  VideoStoryboard.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Describes a storyboard for a video
public struct VideoStoryboard: Codable, Equatable, Hashable {

    /// Height of a tile
    public let height: Int

    /// File that describes mapping of position in the video to a tile in the JPEG file
    public let mapFile: File

    /// A JPEG file that contains tiled previews of video
    public let storyboardFile: File

    /// Width of a tile
    public let width: Int


    public init(
        height: Int,
        mapFile: File,
        storyboardFile: File,
        width: Int
    ) {
        self.height = height
        self.mapFile = mapFile
        self.storyboardFile = storyboardFile
        self.width = width
    }
}

