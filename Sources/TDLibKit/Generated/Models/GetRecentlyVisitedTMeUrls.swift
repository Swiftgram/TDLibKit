//
//  GetRecentlyVisitedTMeUrls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-aa8a4979
//  https://github.com/tdlib/td/tree/aa8a4979
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

