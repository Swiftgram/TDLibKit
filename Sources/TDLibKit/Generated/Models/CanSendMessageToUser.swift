//
//  CanSendMessageToUser.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Check whether the current user can message another user or try to create a chat with them
public struct CanSendMessageToUser: Codable, Equatable, Hashable {

    /// Pass true to get only locally available information without sending network requests
    public let onlyLocal: Bool?

    /// Identifier of the other user
    public let userId: Int64?


    public init(
        onlyLocal: Bool?,
        userId: Int64?
    ) {
        self.onlyLocal = onlyLocal
        self.userId = userId
    }
}

