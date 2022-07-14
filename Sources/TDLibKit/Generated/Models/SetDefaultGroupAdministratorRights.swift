//
//  SetDefaultGroupAdministratorRights.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
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

