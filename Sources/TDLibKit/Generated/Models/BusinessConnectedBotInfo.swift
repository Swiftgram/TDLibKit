//
//  BusinessConnectedBotInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Describes a connection of a bot to an account
public struct BusinessConnectedBotInfo: Codable, Equatable, Hashable {

    /// Information about the bot
    public let bot: BusinessConnectedBot

    /// Point in time (Unix timestamp) when the bot was added; may be 0 if unknown
    public let connectionDate: Int

    /// Model of the device that was used for the bot connection, as provided by the application; may be empty if unknown
    public let deviceModel: String

    /// A human-readable description of the location from which the bot was connected, based on the IP address; may be empty if unknown
    public let location: String


    public init(
        bot: BusinessConnectedBot,
        connectionDate: Int,
        deviceModel: String,
        location: String
    ) {
        self.bot = bot
        self.connectionDate = connectionDate
        self.deviceModel = deviceModel
        self.location = location
    }
}

