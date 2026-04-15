//
//  PollOptionProperties.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// Contains properties of a poll option and describes actions that can be done with the option right now
public struct PollOptionProperties: Codable, Equatable, Hashable {

    /// True, if the option can be deleted using deletePollOption
    public let canBeDeleted: Bool

    /// True, if the poll option can be replied in the same chat and forum topic using inputMessageReplyToMessage
    public let canBeReplied: Bool

    /// True, if the poll option can be replied in another chat or forum topic using inputMessageReplyToExternalMessage
    public let canBeRepliedInAnotherChat: Bool

    /// True, if a link can be generated for the poll option using getMessageLink
    public let canGetLink: Bool


    public init(
        canBeDeleted: Bool,
        canBeReplied: Bool,
        canBeRepliedInAnotherChat: Bool,
        canGetLink: Bool
    ) {
        self.canBeDeleted = canBeDeleted
        self.canBeReplied = canBeReplied
        self.canBeRepliedInAnotherChat = canBeRepliedInAnotherChat
        self.canGetLink = canGetLink
    }
}

