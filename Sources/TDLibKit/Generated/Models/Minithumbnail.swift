//
//  Minithumbnail.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Thumbnail image of a very poor quality and low resolution
public struct Minithumbnail: Codable, Equatable {

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

