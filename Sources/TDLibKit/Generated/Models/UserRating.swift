//
//  UserRating.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.53-bdec6af5
//  https://github.com/tdlib/td/tree/bdec6af5
//

import Foundation


/// Contains description of user rating
public struct UserRating: Codable, Equatable, Hashable {

    /// The rating required for the current level
    public let currentLevelRating: Int64

    /// True, if the maximum level is reached
    public let isMaximumLevelReached: Bool

    /// The level of the user; may be negative
    public let level: Int

    /// The rating required for the next level; 0 if the maximum level is reached
    public let nextLevelRating: Int64

    /// Numerical value of the rating
    public let rating: Int64


    public init(
        currentLevelRating: Int64,
        isMaximumLevelReached: Bool,
        level: Int,
        nextLevelRating: Int64,
        rating: Int64
    ) {
        self.currentLevelRating = currentLevelRating
        self.isMaximumLevelReached = isMaximumLevelReached
        self.level = level
        self.nextLevelRating = nextLevelRating
        self.rating = rating
    }
}

