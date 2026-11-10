//
//  SetCommunityPhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ad2c1516
//  https://github.com/tdlib/td/tree/ad2c1516
//

import Foundation


/// Changes the photo of a community; requires can_change_info administrator right in the community
public struct SetCommunityPhoto: Codable, Equatable, Hashable {

    /// Identifier of the community
    public let communityId: Int64?

    /// New community photo; pass null to delete the community photo
    public let photo: InputChatPhoto?


    public init(
        communityId: Int64?,
        photo: InputChatPhoto?
    ) {
        self.communityId = communityId
        self.photo = photo
    }
}

