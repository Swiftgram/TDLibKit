//
//  AffiliateProgramSortOrder.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
//

import Foundation


/// Describes the order of the found affiliate programs
public indirect enum AffiliateProgramSortOrder: Codable, Equatable, Hashable {

    /// The affiliate programs must be sorted by the profitability
    case affiliateProgramSortOrderProfitability

    /// The affiliate programs must be sorted by creation date
    case affiliateProgramSortOrderCreationDate

    /// The affiliate programs must be sorted by the expected revenue
    case affiliateProgramSortOrderRevenue


    private enum Kind: String, Codable {
        case affiliateProgramSortOrderProfitability
        case affiliateProgramSortOrderCreationDate
        case affiliateProgramSortOrderRevenue
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .affiliateProgramSortOrderProfitability:
            self = .affiliateProgramSortOrderProfitability
        case .affiliateProgramSortOrderCreationDate:
            self = .affiliateProgramSortOrderCreationDate
        case .affiliateProgramSortOrderRevenue:
            self = .affiliateProgramSortOrderRevenue
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .affiliateProgramSortOrderProfitability:
            try container.encode(Kind.affiliateProgramSortOrderProfitability, forKey: .type)
        case .affiliateProgramSortOrderCreationDate:
            try container.encode(Kind.affiliateProgramSortOrderCreationDate, forKey: .type)
        case .affiliateProgramSortOrderRevenue:
            try container.encode(Kind.affiliateProgramSortOrderRevenue, forKey: .type)
        }
    }
}

