//
//  GetCommunityFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
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

