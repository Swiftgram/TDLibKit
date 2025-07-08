//
//  SetGroupCallParticipantIsSpeaking.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Informs TDLib that speaking state of a participant of an active group call has changed. Returns identifier of the participant if it is found
public struct SetGroupCallParticipantIsSpeaking: Codable, Equatable, Hashable {

    /// Group call participant's synchronization audio source identifier, or 0 for the current user
    public let audioSource: Int?

    /// Group call identifier
    public let groupCallId: Int?

    /// Pass true if the user is speaking
    public let isSpeaking: Bool?


    public init(
        audioSource: Int?,
        groupCallId: Int?,
        isSpeaking: Bool?
    ) {
        self.audioSource = audioSource
        self.groupCallId = groupCallId
        self.isSpeaking = isSpeaking
    }
}

