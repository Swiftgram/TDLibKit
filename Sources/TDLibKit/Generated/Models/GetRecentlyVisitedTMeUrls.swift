//
//  GetRecentlyVisitedTMeUrls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-bc7734a2
//  https://github.com/tdlib/td/tree/bc7734a2
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

