//
//  AccountTtl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Contains information about the period of inactivity after which the current user's account will automatically be deleted
public struct AccountTtl: Codable {

    /// Number of days of inactivity before the account will be flagged for deletion; should range from 30-366 days
    public let days: Int


    public init(days: Int) {
        self.days = days
    }
}

