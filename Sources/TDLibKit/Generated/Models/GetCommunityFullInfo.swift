//
//  GetCommunityFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// Returns full information about a community
public struct GetCommunityFullInfo: Codable, Equatable, Hashable {

    /// Community identifier
    public let communityId: Int64?


    public init(communityId: Int64?) {
        self.communityId = communityId
    }
}

