//
//  SetBusinessGreetingMessageSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
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

