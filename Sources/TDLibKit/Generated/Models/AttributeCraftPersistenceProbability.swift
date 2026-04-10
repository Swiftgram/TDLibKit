//
//  AttributeCraftPersistenceProbability.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
//

import Foundation


/// Describes chance of the crafted gift to have the backdrop or symbol of one of the original gifts
public struct AttributeCraftPersistenceProbability: Codable, Equatable, Hashable {

    /// The 4 numbers that describe probability of the craft result to have the same attribute as one of the original gifts if 1, 2, 3, or 4 gifts with the attribute are used in the craft. Each number represents the number of crafted gifts with the original attribute per 1000 successful craftings
    public let persistenceChancePerMille: [Int]


    public init(persistenceChancePerMille: [Int]) {
        self.persistenceChancePerMille = persistenceChancePerMille
    }
}

