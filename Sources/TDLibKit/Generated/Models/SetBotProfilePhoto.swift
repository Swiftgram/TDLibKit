//
//  SetBotProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-2820a9d2
//  https://github.com/tdlib/td/tree/2820a9d2
//

import Foundation


/// Changes a profile photo for a bot
public struct SetBotProfilePhoto: Codable, Equatable, Hashable {

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// Profile photo to set; pass null to delete the chat photo
    public let photo: InputChatPhoto?


    public init(
        botUserId: Int64?,
        photo: InputChatPhoto?
    ) {
        self.botUserId = botUserId
        self.photo = photo
    }
}

