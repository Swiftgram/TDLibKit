//
//  UnconfirmedSession.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
//

import Foundation


/// Contains information about an unconfirmed session
public struct UnconfirmedSession: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the user has logged in or the business bot was connected
    public let date: Int

    /// Model of the device that was used for the session creation, as provided by the application
    public let deviceModel: String

    /// A human-readable description of the location from which the session was created, based on the IP address
    public let location: String

    /// Session type
    public let type: SessionType


    public init(
        date: Int,
        deviceModel: String,
        location: String,
        type: SessionType
    ) {
        self.date = date
        self.deviceModel = deviceModel
        self.location = location
        self.type = type
    }
}

