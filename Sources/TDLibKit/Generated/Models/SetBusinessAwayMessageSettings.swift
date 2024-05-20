//
//  SetBusinessAwayMessageSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
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

