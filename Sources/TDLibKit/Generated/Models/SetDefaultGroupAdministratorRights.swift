//
//  SetDefaultGroupAdministratorRights.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Sets default administrator rights for adding the bot to basic group and supergroup chats; for bots only
public struct SetDefaultGroupAdministratorRights: Codable, Equatable, Hashable {

    /// Default administrator rights for adding the bot to basic group and supergroup chats; pass null to remove default rights
    public let defaultGroupAdministratorRights: ChatAdministratorRights?


    public init(defaultGroupAdministratorRights: ChatAdministratorRights?) {
        self.defaultGroupAdministratorRights = defaultGroupAdministratorRights
    }
}

