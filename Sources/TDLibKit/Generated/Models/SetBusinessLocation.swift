//
//  SetBusinessLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
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

