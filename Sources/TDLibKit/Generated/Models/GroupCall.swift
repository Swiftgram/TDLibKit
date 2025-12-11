//
//  GroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Describes a group call
public struct GroupCall: Codable, Equatable, Hashable, Identifiable {

    /// True, if sending of messages is allowed in the group call
    public let areMessagesAllowed: Bool

    /// True, if the current user can manage the group call; for video chats and live stories only
    public let canBeManaged: Bool

    /// True, if the user can delete messages in the group call
    public let canDeleteMessages: Bool

    /// True, if the current user can broadcast video or share screen
    public let canEnableVideo: Bool

    /// True, if the current user can send messages to the group call
    public let canSendMessages: Bool

    /// True, if the current user can enable or disable sending of messages in the group call
    public let canToggleAreMessagesAllowed: Bool

    /// True, if the current user can enable or disable mute_new_participants setting; for video chats only
    public let canToggleMuteNewParticipants: Bool

    /// Call duration, in seconds; for ended calls only
    public let duration: Int

    /// True, if the group call is scheduled and the current user will receive a notification when the group call starts; for video chats only
    public let enabledStartNotification: Bool

    /// True, if group call participants, which are muted, aren't returned in participant list; for video chats only
    public let hasHiddenListeners: Bool

    /// Group call identifier
    public let id: Int

    /// Invite link for the group call; for group calls that aren't bound to a chat. For video chats call getVideoChatInviteLink to get the link. For live stories in chats with username call getInternalLink with internalLinkTypeLiveStory
    public let inviteLink: String

    /// True, if the call is active
    public let isActive: Bool

    /// True, if the call is joined
    public let isJoined: Bool

    /// True, if the call is a live story of a chat
    public let isLiveStory: Bool

    /// True, if the current user's video is enabled
    public let isMyVideoEnabled: Bool

    /// True, if the current user's video is paused
    public let isMyVideoPaused: Bool

    /// True, if the user is the owner of the call and can end the call, change volume level of other users, or ban users there; for group calls that aren't bound to a chat
    public let isOwned: Bool

    /// True, if the call is an RTMP stream instead of an ordinary video chat; for video chats and live stories only
    public let isRtmpStream: Bool

    /// True, if the call is bound to a chat
    public let isVideoChat: Bool

    /// True, if a video file is being recorded for the call
    public let isVideoRecorded: Bool

    /// True, if all group call participants are loaded
    public let loadedAllParticipants: Bool

    /// Message sender chosen to send messages to the group call; for live stories only; may be null if the call isn't a live story
    public let messageSenderId: MessageSender?

    /// True, if only group call administrators can unmute new participants; for video chats only
    public let muteNewParticipants: Bool

    /// True, if user was kicked from the call because of network loss and the call needs to be rejoined
    public let needRejoin: Bool

    /// The minimum number of Telegram Stars that must be paid by general participant for each sent message to the call; for live stories only
    public let paidMessageStarCount: Int64

    /// Number of participants in the group call
    public let participantCount: Int

    /// At most 3 recently speaking users in the group call
    public let recentSpeakers: [GroupCallRecentSpeaker]

    /// Duration of the ongoing group call recording, in seconds; 0 if none. An updateGroupCall update is not triggered when value of this field changes, but the same recording goes on
    public let recordDuration: Int

    /// Point in time (Unix timestamp) when the group call is expected to be started by an administrator; 0 if it is already active or was ended; for video chats only
    public let scheduledStartDate: Int

    /// Group call title; for video chats only
    public let title: String


    public init(
        areMessagesAllowed: Bool,
        canBeManaged: Bool,
        canDeleteMessages: Bool,
        canEnableVideo: Bool,
        canSendMessages: Bool,
        canToggleAreMessagesAllowed: Bool,
        canToggleMuteNewParticipants: Bool,
        duration: Int,
        enabledStartNotification: Bool,
        hasHiddenListeners: Bool,
        id: Int,
        inviteLink: String,
        isActive: Bool,
        isJoined: Bool,
        isLiveStory: Bool,
        isMyVideoEnabled: Bool,
        isMyVideoPaused: Bool,
        isOwned: Bool,
        isRtmpStream: Bool,
        isVideoChat: Bool,
        isVideoRecorded: Bool,
        loadedAllParticipants: Bool,
        messageSenderId: MessageSender?,
        muteNewParticipants: Bool,
        needRejoin: Bool,
        paidMessageStarCount: Int64,
        participantCount: Int,
        recentSpeakers: [GroupCallRecentSpeaker],
        recordDuration: Int,
        scheduledStartDate: Int,
        title: String
    ) {
        self.areMessagesAllowed = areMessagesAllowed
        self.canBeManaged = canBeManaged
        self.canDeleteMessages = canDeleteMessages
        self.canEnableVideo = canEnableVideo
        self.canSendMessages = canSendMessages
        self.canToggleAreMessagesAllowed = canToggleAreMessagesAllowed
        self.canToggleMuteNewParticipants = canToggleMuteNewParticipants
        self.duration = duration
        self.enabledStartNotification = enabledStartNotification
        self.hasHiddenListeners = hasHiddenListeners
        self.id = id
        self.inviteLink = inviteLink
        self.isActive = isActive
        self.isJoined = isJoined
        self.isLiveStory = isLiveStory
        self.isMyVideoEnabled = isMyVideoEnabled
        self.isMyVideoPaused = isMyVideoPaused
        self.isOwned = isOwned
        self.isRtmpStream = isRtmpStream
        self.isVideoChat = isVideoChat
        self.isVideoRecorded = isVideoRecorded
        self.loadedAllParticipants = loadedAllParticipants
        self.messageSenderId = messageSenderId
        self.muteNewParticipants = muteNewParticipants
        self.needRejoin = needRejoin
        self.paidMessageStarCount = paidMessageStarCount
        self.participantCount = participantCount
        self.recentSpeakers = recentSpeakers
        self.recordDuration = recordDuration
        self.scheduledStartDate = scheduledStartDate
        self.title = title
    }
}

