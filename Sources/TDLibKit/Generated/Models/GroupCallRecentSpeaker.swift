//
//  GroupCallRecentSpeaker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Describes a recently speaking participant in a group call
public struct GroupCallRecentSpeaker: Codable, Equatable, Hashable {

    /// True, is the user has spoken recently
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

