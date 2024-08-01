//
//  SearchPublicStoriesByVenue.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
//

import Foundation


/// Searches for public stories from the given venue. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
public struct SearchPublicStoriesByVenue: Codable, Equatable, Hashable {

    /// The maximum number of stories to be returned; up to 100. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Identifier of the venue in the provider database
    public let venueId: String?

    /// Provider of the venue
    public let venueProvider: String?


    public init(
        limit: Int?,
        offset: String?,
        venueId: String?,
        venueProvider: String?
    ) {
        self.limit = limit
        self.offset = offset
        self.venueId = venueId
        self.venueProvider = venueProvider
    }
}

