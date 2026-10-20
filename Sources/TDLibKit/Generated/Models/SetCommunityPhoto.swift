//
//  SetCommunityPhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-4a85043f
//  https://github.com/tdlib/td/tree/4a85043f
//

import Foundation


/// Changes the photo of a community; requires can_change_info administrator right in the community
public struct SetCommunityPhoto: Codable, Equatable, Hashable {

    /// Identifier of the community
    public let communityId: Int64?

    /// New chat photo; pass null to delete the chat photo
    public let photo: InputChatPhoto?


    public init(
        communityId: Int64?,
        photo: InputChatPhoto?
    ) {
        self.communityId = communityId
        self.photo = photo
    }
}

