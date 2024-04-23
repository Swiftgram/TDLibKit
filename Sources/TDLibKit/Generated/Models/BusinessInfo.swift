//
//  BusinessInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-2424d681
//  https://github.com/tdlib/td/tree/2424d681
//

import Foundation


/// Contains information about a Telegram Business account
public struct BusinessInfo: Codable, Equatable, Hashable {

    /// The away message; may be null if none or the Business account is not of the current user
    public let awayMessageSettings: BusinessAwayMessageSettings?

    /// The greeting message; may be null if none or the Business account is not of the current user
    public let greetingMessageSettings: BusinessGreetingMessageSettings?

    /// Location of the business; may be null if none
    public let location: BusinessLocation?

    /// Opening hours of the business; may be null if none. The hours are guaranteed to be valid and has already been split by week days
    public let openingHours: BusinessOpeningHours?

    /// Information about start page of the account; may be null if none
    public let startPage: BusinessStartPage?


    public init(
        awayMessageSettings: BusinessAwayMessageSettings?,
        greetingMessageSettings: BusinessGreetingMessageSettings?,
        location: BusinessLocation?,
        openingHours: BusinessOpeningHours?,
        startPage: BusinessStartPage?
    ) {
        self.awayMessageSettings = awayMessageSettings
        self.greetingMessageSettings = greetingMessageSettings
        self.location = location
        self.openingHours = openingHours
        self.startPage = startPage
    }
}

