//
//  GetRecentlyVisitedTMeUrls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Returns t.me URLs recently visited by a newly registered user
public struct GetRecentlyVisitedTMeUrls: Codable {

    /// Google Play referrer to identify the user
    public let referrer: String?


    public init(referrer: String?) {
        self.referrer = referrer
    }
}

