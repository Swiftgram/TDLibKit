//
//  DeleteAllCallMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-6ba394fc
//  https://github.com/tdlib/td/tree/6ba394fc
//

import Foundation


/// Deletes all call messages
public struct DeleteAllCallMessages: Codable, Equatable {

    /// Pass true to delete the messages for all users
    public let revoke: Bool?


    public init(revoke: Bool?) {
        self.revoke = revoke
    }
}

