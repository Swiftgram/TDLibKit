//
//  FailedToAddMembers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Represents a list of users who have failed to be added to a chat
public struct FailedToAddMembers: Codable, Equatable, Hashable {

    /// Information about users who weren't added to the chat
    public let failedToAddMembers: [FailedToAddMember]


    public init(failedToAddMembers: [FailedToAddMember]) {
        self.failedToAddMembers = failedToAddMembers
    }
}

