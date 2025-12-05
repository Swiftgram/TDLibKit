//
//  GetUserProfileAudios.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Returns the list of profile audio files of a user
public struct GetUserProfileAudios: Codable, Equatable, Hashable {

    /// The maximum number of audio files to be returned; up to 100
    public let limit: Int?

    /// The number of audio files to skip; must be non-negative
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

