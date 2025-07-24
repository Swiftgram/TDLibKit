//
//  VideoStoryboard.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
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

