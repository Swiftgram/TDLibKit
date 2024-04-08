//
//  SetBusinessLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.27-d7203eb7
//  https://github.com/tdlib/td/tree/d7203eb7
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

