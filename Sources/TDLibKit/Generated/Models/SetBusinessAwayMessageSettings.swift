//
//  SetBusinessAwayMessageSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-672f837c
//  https://github.com/tdlib/td/tree/672f837c
//

import Foundation


/// Changes the business away message settings of the current user. Requires Telegram Business subscription
public struct SetBusinessAwayMessageSettings: Codable, Equatable, Hashable {

    /// The new settings for the away message of the business; pass null to disable the away message
    public let awayMessageSettings: BusinessAwayMessageSettings?


    public init(awayMessageSettings: BusinessAwayMessageSettings?) {
        self.awayMessageSettings = awayMessageSettings
    }
}

