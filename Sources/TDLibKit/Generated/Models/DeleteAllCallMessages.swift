//
//  DeleteAllCallMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Deletes all call messages
public struct DeleteAllCallMessages: Codable, Equatable, Hashable {

    /// Pass true to delete the messages for all users
    public let revoke: Bool?


    public init(revoke: Bool?) {
        self.revoke = revoke
    }
}

