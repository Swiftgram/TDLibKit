//
//  SearchPublicStoriesByLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Searches for public stories by the given address location. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
public struct SearchPublicStoriesByLocation: Codable, Equatable, Hashable {

    /// Address of the location
    public let address: LocationAddress?

    /// The maximum number of stories to be returned; up to 100. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?


    public init(
        address: LocationAddress?,
        limit: Int?,
        offset: String?
    ) {
        self.address = address
        self.limit = limit
        self.offset = offset
    }
}

