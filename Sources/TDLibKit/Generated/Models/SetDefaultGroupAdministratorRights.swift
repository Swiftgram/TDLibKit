//
//  SetDefaultGroupAdministratorRights.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-bc7734a2
//  https://github.com/tdlib/td/tree/bc7734a2
//

import Foundation


/// Sets default administrator rights for adding the bot to basic group and supergroup chats; for bots only
public struct SetDefaultGroupAdministratorRights: Codable, Equatable {

    /// Default administrator rights for adding the bot to basic group and supergroup chats; may be null
    public let defaultGroupAdministratorRights: ChatAdministratorRights?


    public init(defaultGroupAdministratorRights: ChatAdministratorRights?) {
        self.defaultGroupAdministratorRights = defaultGroupAdministratorRights
    }
}

