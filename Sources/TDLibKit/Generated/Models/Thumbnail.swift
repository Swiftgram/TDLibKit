//
//  Thumbnail.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-986f1ab4
//  https://github.com/tdlib/td/tree/986f1ab4
//

import Foundation


/// Represents a thumbnail
public struct Thumbnail: Codable, Equatable, Hashable {

    /// The thumbnail
    public let file: File

    /// Thumbnail format
    public let format: ThumbnailFormat

    /// Thumbnail height
    public let height: Int

    /// Thumbnail width
    public let width: Int


    public init(
        file: File,
        format: ThumbnailFormat,
        height: Int,
        width: Int
    ) {
        self.file = file
        self.format = format
        self.height = height
        self.width = width
    }
}

