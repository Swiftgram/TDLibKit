//
//  GetAttachmentMenuBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Returns information about a bot that can be added to attachment or side menu
public struct GetAttachmentMenuBot: Codable, Equatable, Hashable {

    /// Bot's user identifier
    public let botUserId: Int64?


    public init(botUserId: Int64?) {
        self.botUserId = botUserId
    }
}

