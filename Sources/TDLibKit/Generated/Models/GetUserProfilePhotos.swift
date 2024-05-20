//
//  GetUserProfilePhotos.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns the profile photos of a user. Personal and public photo aren't returned
public struct GetUserProfilePhotos: Codable, Equatable, Hashable {

    /// The maximum number of photos to be returned; up to 100
    public let limit: Int?

    /// The number of photos to skip; must be non-negative
    public let offset: Int?

    /// User identifier
    public let userId: Int64?


    public init(
        limit: Int?,
        offset: Int?,
        userId: Int64?
    ) {
        self.limit = limit
        self.offset = offset
        self.userId = userId
    }
}

