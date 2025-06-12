//
//  SetBusinessGreetingMessageSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Changes the business greeting message settings of the current user. Requires Telegram Business subscription
public struct SetBusinessGreetingMessageSettings: Codable, Equatable, Hashable {

    /// The new settings for the greeting message of the business; pass null to disable the greeting message
    public let greetingMessageSettings: BusinessGreetingMessageSettings?


    public init(greetingMessageSettings: BusinessGreetingMessageSettings?) {
        self.greetingMessageSettings = greetingMessageSettings
    }
}

