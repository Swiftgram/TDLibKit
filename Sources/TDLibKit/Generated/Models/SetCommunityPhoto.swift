//
//  SetCommunityPhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
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

