//
//  ChatPhotos.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Contains a list of chat or user profile photos
public struct ChatPhotos: Codable, Equatable, Hashable {

    /// List of photos
    public let photos: [ChatPhoto]

    /// Total number of photos
    public let totalCount: Int


    public init(
        photos: [ChatPhoto],
        totalCount: Int
    ) {
        self.photos = photos
        self.totalCount = totalCount
    }
}

