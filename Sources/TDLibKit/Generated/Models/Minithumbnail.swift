//
//  Minithumbnail.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Thumbnail image of a very poor quality and low resolution
public struct Minithumbnail: Codable, Equatable, Hashable {

    /// The thumbnail in JPEG format
    public let data: Data

    /// Thumbnail height, usually doesn't exceed 40
    public let height: Int

    /// Thumbnail width, usually doesn't exceed 40
    public let width: Int


    public init(
        data: Data,
        height: Int,
        width: Int
    ) {
        self.data = data
        self.height = height
        self.width = width
    }
}

