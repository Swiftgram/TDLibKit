//
//  GetUserProfilePhotos.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Returns the profile photos of a user. The result of this query may be outdated: some photos might have been deleted already
public struct GetUserProfilePhotos: Codable {

    /// The maximum number of photos to be returned; up to 100
    public let limit: Int

    /// The number of photos to skip; must be non-negative
    public let offset: Int

    /// User identifier
    public let userId: Int64


    public init(
        limit: Int,
        offset: Int,
        userId: Int64
    ) {
        self.limit = limit
        self.offset = offset
        self.userId = userId
    }
}

