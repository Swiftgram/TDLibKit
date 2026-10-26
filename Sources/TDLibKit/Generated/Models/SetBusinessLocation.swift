//
//  SetBusinessLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
//

import Foundation


/// Changes the business location of the current user. Requires Telegram Business subscription
public struct SetBusinessLocation: Codable, Equatable, Hashable {

    /// The new location of the business; pass null to remove the location
    public let location: BusinessLocation?


    public init(location: BusinessLocation?) {
        self.location = location
    }
}

