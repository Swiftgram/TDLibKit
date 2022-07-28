//
//  SetLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Changes the location of the current user. Needs to be called if GetOption("is_location_visible") is true and location changes for more than 1 kilometer
public struct SetLocation: Codable, Equatable {

    /// The new location of the user
    public let location: Location?


    public init(location: Location?) {
        self.location = location
    }
}

