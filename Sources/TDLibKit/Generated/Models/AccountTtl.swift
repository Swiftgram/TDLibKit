//
//  AccountTtl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Contains information about the period of inactivity after which the current user's account will automatically be deleted
public struct AccountTtl: Codable, Equatable, Hashable {

    /// Number of days of inactivity before the account will be flagged for deletion; 30-730 days
    public let days: Int


    public init(days: Int) {
        self.days = days
    }
}

