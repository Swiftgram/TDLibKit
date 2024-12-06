//
//  SetBotProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
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

