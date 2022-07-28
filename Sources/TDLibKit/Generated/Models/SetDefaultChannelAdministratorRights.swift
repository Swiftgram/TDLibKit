//
//  SetDefaultChannelAdministratorRights.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Sets default administrator rights for adding the bot to channel chats; for bots only
public struct SetDefaultChannelAdministratorRights: Codable, Equatable {

    /// Default administrator rights for adding the bot to channels; may be null
    public let defaultChannelAdministratorRights: ChatAdministratorRights?


    public init(defaultChannelAdministratorRights: ChatAdministratorRights?) {
        self.defaultChannelAdministratorRights = defaultChannelAdministratorRights
    }
}

