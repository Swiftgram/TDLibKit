//
//  BusinessInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a Telegram Business account
public struct BusinessInfo: Codable, Equatable, Hashable {

    /// The away message; may be null if none or the Business account is not of the current user
    public let awayMessageSettings: BusinessAwayMessageSettings?

    /// The greeting message; may be null if none or the Business account is not of the current user
    public let greetingMessageSettings: BusinessGreetingMessageSettings?

    /// Opening hours of the business in the local time; may be null if none. The hours are guaranteed to be valid and has already been split by week days. Local time zone identifier will be empty. An updateUserFullInfo update is not triggered when value of this field changes
    public let localOpeningHours: BusinessOpeningHours?

    /// Location of the business; may be null if none
    public let location: BusinessLocation?

    /// Time left before the business will close the next time, in seconds; 0 if unknown. An updateUserFullInfo update is not triggered when value of this field changes
    public let nextCloseIn: Int

    /// Time left before the business will open the next time, in seconds; 0 if unknown. An updateUserFullInfo update is not triggered when value of this field changes
    public let nextOpenIn: Int

    /// Opening hours of the business; may be null if none. The hours are guaranteed to be valid and has already been split by week days
    public let openingHours: BusinessOpeningHours?

    /// Information about start page of the account; may be null if none
    public let startPage: BusinessStartPage?


    public init(
        awayMessageSettings: BusinessAwayMessageSettings?,
        greetingMessageSettings: BusinessGreetingMessageSettings?,
        localOpeningHours: BusinessOpeningHours?,
        location: BusinessLocation?,
        nextCloseIn: Int,
        nextOpenIn: Int,
        openingHours: BusinessOpeningHours?,
        startPage: BusinessStartPage?
    ) {
        self.awayMessageSettings = awayMessageSettings
        self.greetingMessageSettings = greetingMessageSettings
        self.localOpeningHours = localOpeningHours
        self.location = location
        self.nextCloseIn = nextCloseIn
        self.nextOpenIn = nextOpenIn
        self.openingHours = openingHours
        self.startPage = startPage
    }
}

