//
//  LiveStoryDonors.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains a list of users and chats that spend the most money on paid messages and reactions in a live story
public struct LiveStoryDonors: Codable, Equatable, Hashable {

    /// List of top donors in the live story
    public let topDonors: [PaidReactor]

    /// Total amount of spent Telegram Stars
    public let totalStarCount: Int64


    public init(
        topDonors: [PaidReactor],
        totalStarCount: Int64
    ) {
        self.topDonors = topDonors
        self.totalStarCount = totalStarCount
    }
}

