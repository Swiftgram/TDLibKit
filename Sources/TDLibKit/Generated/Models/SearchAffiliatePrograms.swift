//
//  SearchAffiliatePrograms.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-1e75ca0c
//  https://github.com/tdlib/td/tree/1e75ca0c
//

import Foundation


/// Searches affiliate programs that can be connected to the given affiliate
public struct SearchAffiliatePrograms: Codable, Equatable, Hashable {

    /// The affiliate for which affiliate programs are searched for
    public let affiliate: AffiliateType?

    /// The maximum number of affiliate programs to return
    public let limit: Int?

    /// Offset of the first affiliate program to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Sort order for the results
    public let sortOrder: AffiliateProgramSortOrder?


    public init(
        affiliate: AffiliateType?,
        limit: Int?,
        offset: String?,
        sortOrder: AffiliateProgramSortOrder?
    ) {
        self.affiliate = affiliate
        self.limit = limit
        self.offset = offset
        self.sortOrder = sortOrder
    }
}

