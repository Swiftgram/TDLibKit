//
//  DeleteCommunity.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
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

