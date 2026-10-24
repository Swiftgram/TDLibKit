//
//  DeleteCommunity.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Deletes a community; requires owner privileges
public struct DeleteCommunity: Codable, Equatable, Hashable {

    /// Identifier of the community
    public let communityId: Int64?


    public init(communityId: Int64?) {
        self.communityId = communityId
    }
}

