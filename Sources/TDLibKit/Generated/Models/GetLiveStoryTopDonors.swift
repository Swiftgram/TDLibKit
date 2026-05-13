//
//  GetLiveStoryTopDonors.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-7a7081bf
//  https://github.com/tdlib/td/tree/7a7081bf
//

import Foundation


/// Returns the list of top live story donors
public struct GetLiveStoryTopDonors: Codable, Equatable, Hashable {

    /// Group call identifier of the live story
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}

