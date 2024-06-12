//
//  FailedToAddMembers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-7e950e1b
//  https://github.com/tdlib/td/tree/7e950e1b
//

import Foundation


/// Represents a list of users that has failed to be added to a chat
public struct FailedToAddMembers: Codable, Equatable, Hashable {

    /// Information about users that weren't added to the chat
    public let failedToAddMembers: [FailedToAddMember]


    public init(failedToAddMembers: [FailedToAddMember]) {
        self.failedToAddMembers = failedToAddMembers
    }
}

