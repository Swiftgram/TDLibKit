//
//  GetUserGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-6dae0a56
//  https://github.com/tdlib/td/tree/6dae0a56
//

import Foundation


/// Returns gifts saved to profile by the given user
public struct GetUserGifts: Codable, Equatable, Hashable {

    /// The maximum number of gifts to be returned; must be positive and can't be greater than 100. For optimal performance, the number of returned objects is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Identifier of the user
    public let userId: Int64?


    public init(
        limit: Int?,
        offset: String?,
        userId: Int64?
    ) {
        self.limit = limit
        self.offset = offset
        self.userId = userId
    }
}

