//
//  SetCommunityName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Changes name of the given community; requires can_change_info administrator right in the community
public struct SetCommunityName: Codable, Equatable, Hashable {

    /// Identifier of the community
    public let communityId: Int64?

    /// New name of the community
    public let name: String?


    public init(
        communityId: Int64?,
        name: String?
    ) {
        self.communityId = communityId
        self.name = name
    }
}

