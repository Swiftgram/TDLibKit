//
//  GroupCallRecentSpeaker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Describes a recently speaking participant in a group call
public struct GroupCallRecentSpeaker: Codable, Equatable, Hashable {

    /// True, if the user has spoken recently
    public let isSpeaking: Bool

    /// Group call participant identifier
    public let participantId: MessageSender


    public init(
        isSpeaking: Bool,
        participantId: MessageSender
    ) {
        self.isSpeaking = isSpeaking
        self.participantId = participantId
    }
}

