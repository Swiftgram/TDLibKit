//
//  ChatInviteLinkMembers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.39-056963e4
//  https://github.com/tdlib/td/tree/056963e4
//

import Foundation


/// Contains a list of chat members joined a chat via an invite link
public struct ChatInviteLinkMembers: Codable, Equatable, Hashable {

    /// List of chat members, joined a chat via an invite link
    public let members: [ChatInviteLinkMember]

    /// Approximate total number of chat members found
    public let totalCount: Int


    public init(
        members: [ChatInviteLinkMember],
        totalCount: Int
    ) {
        self.members = members
        self.totalCount = totalCount
    }
}

