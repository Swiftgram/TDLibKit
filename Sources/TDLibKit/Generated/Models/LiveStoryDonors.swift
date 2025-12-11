//
//  LiveStoryDonors.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Contains a list of users and chats that spend most money on paid messages and reactions in a live story
public struct LiveStoryDonors: Codable, Equatable, Hashable {

    /// List of top donors in the live story
    public let topDonors: [PaidReactor]

    /// Total amount of spend Telegram Stars
    public let totalStarCount: Int64


    public init(
        topDonors: [PaidReactor],
        totalStarCount: Int64
    ) {
        self.topDonors = topDonors
        self.totalStarCount = totalStarCount
    }
}

