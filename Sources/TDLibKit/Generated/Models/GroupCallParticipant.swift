//
//  GroupCallParticipant.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a group call participant
public struct GroupCallParticipant: Codable, Equatable, Hashable {

    /// User's audio channel synchronization source identifier
    public let audioSourceId: Int

    /// The participant user's bio or the participant chat's description
    public let bio: String

    /// True, if the current user can mute the participant for all other group call participants
    public let canBeMutedForAllUsers: Bool

    /// True, if the current user can mute the participant only for self
    public let canBeMutedForCurrentUser: Bool

    /// True, if the current user can allow the participant to unmute themselves or unmute the participant (if the participant is the current user)
    public let canBeUnmutedForAllUsers: Bool

    /// True, if the current user can unmute the participant for self
    public let canBeUnmutedForCurrentUser: Bool

    /// True, if the participant is muted for all users, but can unmute themselves
    public let canUnmuteSelf: Bool

    /// True, if the participant is the current user
    public let isCurrentUser: Bool

    /// True, if the participant hand is raised
    public let isHandRaised: Bool

    /// True, if the participant is muted for all users
    public let isMutedForAllUsers: Bool

    /// True, if the participant is muted for the current user
    public let isMutedForCurrentUser: Bool

    /// True, if the participant is speaking as set by setGroupCallParticipantIsSpeaking
    public let isSpeaking: Bool

    /// User's order in the group call participant list. Orders must be compared lexicographically. The bigger is order, the higher is user in the list. If order is empty, the user must be removed from the participant list
    public let order: String

    /// Identifier of the group call participant
    public let participantId: MessageSender

    /// User's screen sharing audio channel synchronization source identifier
    public let screenSharingAudioSourceId: Int

    /// Information about user's screen sharing video channel; may be null if there is no active screen sharing video
    public let screenSharingVideoInfo: GroupCallParticipantVideoInfo?

    /// Information about user's video channel; may be null if there is no active video
    public let videoInfo: GroupCallParticipantVideoInfo?

    /// Participant's volume level; 1-20000 in hundreds of percents
    public let volumeLevel: Int


    public init(
        audioSourceId: Int,
        bio: String,
        canBeMutedForAllUsers: Bool,
        canBeMutedForCurrentUser: Bool,
        canBeUnmutedForAllUsers: Bool,
        canBeUnmutedForCurrentUser: Bool,
        canUnmuteSelf: Bool,
        isCurrentUser: Bool,
        isHandRaised: Bool,
        isMutedForAllUsers: Bool,
        isMutedForCurrentUser: Bool,
        isSpeaking: Bool,
        order: String,
        participantId: MessageSender,
        screenSharingAudioSourceId: Int,
        screenSharingVideoInfo: GroupCallParticipantVideoInfo?,
        videoInfo: GroupCallParticipantVideoInfo?,
        volumeLevel: Int
    ) {
        self.audioSourceId = audioSourceId
        self.bio = bio
        self.canBeMutedForAllUsers = canBeMutedForAllUsers
        self.canBeMutedForCurrentUser = canBeMutedForCurrentUser
        self.canBeUnmutedForAllUsers = canBeUnmutedForAllUsers
        self.canBeUnmutedForCurrentUser = canBeUnmutedForCurrentUser
        self.canUnmuteSelf = canUnmuteSelf
        self.isCurrentUser = isCurrentUser
        self.isHandRaised = isHandRaised
        self.isMutedForAllUsers = isMutedForAllUsers
        self.isMutedForCurrentUser = isMutedForCurrentUser
        self.isSpeaking = isSpeaking
        self.order = order
        self.participantId = participantId
        self.screenSharingAudioSourceId = screenSharingAudioSourceId
        self.screenSharingVideoInfo = screenSharingVideoInfo
        self.videoInfo = videoInfo
        self.volumeLevel = volumeLevel
    }
}

