//
//  GetConnectedAffiliatePrograms.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Returns affiliate programs that were connected to the given affiliate
public struct GetConnectedAffiliatePrograms: Codable, Equatable, Hashable {

    /// The affiliate to which the affiliate program were connected
    public let affiliate: AffiliateType?

    /// The maximum number of affiliate programs to return
    public let limit: Int?

    /// Offset of the first affiliate program to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?


    public init(
        affiliate: AffiliateType?,
        limit: Int?,
        offset: String?
    ) {
        self.affiliate = affiliate
        self.limit = limit
        self.offset = offset
    }
}

