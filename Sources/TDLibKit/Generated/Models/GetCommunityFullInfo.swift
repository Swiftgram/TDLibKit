//
//  GetCommunityFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
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

