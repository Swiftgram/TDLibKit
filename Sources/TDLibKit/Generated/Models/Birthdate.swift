//
//  Birthdate.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-d321984b
//  https://github.com/tdlib/td/tree/d321984b
//

import Foundation


/// Represents a birthdate of a user
public struct Birthdate: Codable, Equatable, Hashable {

    /// Day of the month; 1-31
    public let day: Int

    /// Month of the year; 1-12
    public let month: Int

    /// Birth year; 0 if unknown
    public let year: Int


    public init(
        day: Int,
        month: Int,
        year: Int
    ) {
        self.day = day
        self.month = month
        self.year = year
    }
}

