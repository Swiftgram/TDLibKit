//
//  GetRecentlyVisitedTMeUrls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Returns t.me URLs recently visited by a newly registered user
public struct GetRecentlyVisitedTMeUrls: Codable, Equatable {

    /// Google Play referrer to identify the user
    public let referrer: String?


    public init(referrer: String?) {
        self.referrer = referrer
    }
}

