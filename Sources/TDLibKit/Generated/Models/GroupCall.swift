//
//  GroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a group call
public struct GroupCall: Codable, Equatable, Hashable, Identifiable {

    /// True, if the current user can manage the group call
    public let canBeManaged: Bool

    /// True, if the current user can broadcast video or share screen
    public let canEnableVideo: Bool

    /// True, if the current user can enable or disable mute_new_participants setting
    public let canToggleMuteNewParticipants: Bool

    /// Call duration, in seconds; for ended calls only
    public let duration: Int

    /// True, if the group call is scheduled and the current user will receive a notification when the group call starts
    public let enabledStartNotification: Bool

    /// True, if group call participants, which are muted, aren't returned in participant list
    public let hasHiddenListeners: Bool

    /// Group call identifier
    public let id: Int

    /// True, if the call is active
    public let isActive: Bool

    /// True, if the call is joined
    public let isJoined: Bool

    /// True, if the current user's video is enabled
    public let isMyVideoEnabled: Bool

    /// True, if the current user's video is paused
    public let isMyVideoPaused: Bool

    /// True, if the chat is an RTMP stream instead of an ordinary video chat
    public let isRtmpStream: Bool

    /// True, if a video file is being recorded for the call
    public let isVideoRecorded: Bool

    /// True, if all group call participants are loaded
    public let loadedAllParticipants: Bool

    /// True, if only group call administrators can unmute new participants
    public let muteNewParticipants: Bool

    /// True, if user was kicked from the call because of network loss and the call needs to be rejoined
    public let needRejoin: Bool

    /// Number of participants in the group call
    public let participantCount: Int

    /// At most 3 recently speaking users in the group call
    public let recentSpeakers: [GroupCallRecentSpeaker]

    /// Duration of the ongoing group call recording, in seconds; 0 if none. An updateGroupCall update is not triggered when value of this field changes, but the same recording goes on
    public let recordDuration: Int

    /// Point in time (Unix timestamp) when the group call is supposed to be started by an administrator; 0 if it is already active or was ended
    public let scheduledStartDate: Int

    /// Group call title
    public let title: String


    public init(
        canBeManaged: Bool,
        canEnableVideo: Bool,
        canToggleMuteNewParticipants: Bool,
        duration: Int,
        enabledStartNotification: Bool,
        hasHiddenListeners: Bool,
        id: Int,
        isActive: Bool,
        isJoined: Bool,
        isMyVideoEnabled: Bool,
        isMyVideoPaused: Bool,
        isRtmpStream: Bool,
        isVideoRecorded: Bool,
        loadedAllParticipants: Bool,
        muteNewParticipants: Bool,
        needRejoin: Bool,
        participantCount: Int,
        recentSpeakers: [GroupCallRecentSpeaker],
        recordDuration: Int,
        scheduledStartDate: Int,
        title: String
    ) {
        self.canBeManaged = canBeManaged
        self.canEnableVideo = canEnableVideo
        self.canToggleMuteNewParticipants = canToggleMuteNewParticipants
        self.duration = duration
        self.enabledStartNotification = enabledStartNotification
        self.hasHiddenListeners = hasHiddenListeners
        self.id = id
        self.isActive = isActive
        self.isJoined = isJoined
        self.isMyVideoEnabled = isMyVideoEnabled
        self.isMyVideoPaused = isMyVideoPaused
        self.isRtmpStream = isRtmpStream
        self.isVideoRecorded = isVideoRecorded
        self.loadedAllParticipants = loadedAllParticipants
        self.muteNewParticipants = muteNewParticipants
        self.needRejoin = needRejoin
        self.participantCount = participantCount
        self.recentSpeakers = recentSpeakers
        self.recordDuration = recordDuration
        self.scheduledStartDate = scheduledStartDate
        self.title = title
    }
}

