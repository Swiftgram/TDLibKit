//
//  ChatInviteLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-da4e46f2
//  https://github.com/tdlib/td/tree/da4e46f2
//

import Foundation


/// Contains information about a chat invite link
public struct ChatInviteLinkInfo: Codable, Equatable, Hashable {

    /// Identifier of the accent color for chat title and background of chat photo
    public let accentColorId: Int

    /// If non-zero, the amount of time for which read access to the chat will remain available, in seconds
    public let accessibleFor: Int

    /// Chat identifier of the invite link; 0 if the user has no access to the chat before joining
    public let chatId: Int64

    /// True, if the link only creates join request
    public let createsJoinRequest: Bool

    public let description: String

    /// True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
    public let isPublic: Bool

    /// Number of members in the chat
    public let memberCount: Int

    /// User identifiers of some chat members that may be known to the current user
    public let memberUserIds: [Int64]

    /// Chat photo; may be null
    public let photo: ChatPhotoInfo?

    /// Information about subscription plan that must be paid by the user to use the link; may be null if the link doesn't require subscription
    public let subscriptionInfo: ChatInviteLinkSubscriptionInfo?

    /// Title of the chat
    public let title: String

    /// Type of the chat
    public let type: InviteLinkChatType

    /// Information about verification status of the chat; may be null if none
    public let verificationStatus: VerificationStatus?


    public init(
        accentColorId: Int,
        accessibleFor: Int,
        chatId: Int64,
        createsJoinRequest: Bool,
        description: String,
        isPublic: Bool,
        memberCount: Int,
        memberUserIds: [Int64],
        photo: ChatPhotoInfo?,
        subscriptionInfo: ChatInviteLinkSubscriptionInfo?,
        title: String,
        type: InviteLinkChatType,
        verificationStatus: VerificationStatus?
    ) {
        self.accentColorId = accentColorId
        self.accessibleFor = accessibleFor
        self.chatId = chatId
        self.createsJoinRequest = createsJoinRequest
        self.description = description
        self.isPublic = isPublic
        self.memberCount = memberCount
        self.memberUserIds = memberUserIds
        self.photo = photo
        self.subscriptionInfo = subscriptionInfo
        self.title = title
        self.type = type
        self.verificationStatus = verificationStatus
    }
}

