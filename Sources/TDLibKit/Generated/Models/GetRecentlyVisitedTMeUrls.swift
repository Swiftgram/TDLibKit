//
//  GetRecentlyVisitedTMeUrls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
//

import Foundation


/// Returns t.me URLs recently visited by a newly registered user
public struct GetRecentlyVisitedTMeUrls: Codable, Equatable, Hashable {

    /// Google Play referrer to identify the user
    public let referrer: String?


    public init(referrer: String?) {
        self.referrer = referrer
    }
}

