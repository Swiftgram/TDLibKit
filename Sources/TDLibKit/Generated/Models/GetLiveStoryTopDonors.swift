//
//  GetLiveStoryTopDonors.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
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

