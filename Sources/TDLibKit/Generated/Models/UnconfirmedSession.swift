//
//  UnconfirmedSession.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about an unconfirmed session
public struct UnconfirmedSession: Codable, Equatable, Hashable, Identifiable {

    /// Model of the device that was used for the session creation, as provided by the application
    public let deviceModel: String

    /// Session identifier
    public let id: TdInt64

    /// A human-readable description of the location from which the session was created, based on the IP address
    public let location: String

    /// Point in time (Unix timestamp) when the user has logged in
    public let logInDate: Int


    public init(
        deviceModel: String,
        id: TdInt64,
        location: String,
        logInDate: Int
    ) {
        self.deviceModel = deviceModel
        self.id = id
        self.location = location
        self.logInDate = logInDate
    }
}

