//
//  SetBusinessAwayMessageSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
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

