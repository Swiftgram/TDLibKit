//
//  JoinGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Joins an active group call. Returns join response payload for tgcalls
public struct JoinGroupCall: Codable, Equatable, Hashable {

    /// Caller audio channel synchronization source identifier; received from tgcalls
    public let audioSourceId: Int?

    /// Group call identifier
    public let groupCallId: Int?

    /// If non-empty, invite hash to be used to join the group call without being muted by administrators
    public let inviteHash: String?

    /// Pass true to join the call with muted microphone
    public let isMuted: Bool?

    /// Pass true if the user's video is enabled
    public let isMyVideoEnabled: Bool?

    /// Fingerprint of the encryption key for E2E group calls not bound to a chat; pass 0 for voice chats
    public let keyFingerprint: TdInt64?

    /// Identifier of a group call participant, which will be used to join the call; pass null to join as self; video chats only
    public let participantId: MessageSender?

    /// Group call join payload; received from tgcalls
    public let payload: String?


    public init(
        audioSourceId: Int?,
        groupCallId: Int?,
        inviteHash: String?,
        isMuted: Bool?,
        isMyVideoEnabled: Bool?,
        keyFingerprint: TdInt64?,
        participantId: MessageSender?,
        payload: String?
    ) {
        self.audioSourceId = audioSourceId
        self.groupCallId = groupCallId
        self.inviteHash = inviteHash
        self.isMuted = isMuted
        self.isMyVideoEnabled = isMyVideoEnabled
        self.keyFingerprint = keyFingerprint
        self.participantId = participantId
        self.payload = payload
    }
}

