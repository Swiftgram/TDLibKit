//
//  GetCommunityFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
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

