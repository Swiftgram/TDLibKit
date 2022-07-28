//
//  Session.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about one session in a Telegram application used by the current user. Sessions must be shown to the user in the returned order
public struct Session: Codable, Equatable {

    /// Telegram API identifier, as provided by the application
    public let apiId: Int

    /// Name of the application, as provided by the application
    public let applicationName: String

    /// The version of the application, as provided by the application
    public let applicationVersion: String

    /// True, if incoming calls can be accepted by the session
    public let canAcceptCalls: Bool

    /// True, if incoming secret chats can be accepted by the session
    public let canAcceptSecretChats: Bool

    /// A two-letter country code for the country from which the session was created, based on the IP address
    public let country: String

    /// Model of the device the application has been run or is running on, as provided by the application
    public let deviceModel: String

    /// Session identifier
    public let id: TdInt64

    /// IP address from which the session was created, in human-readable format
    public let ip: String

    /// True, if this session is the current session
    public let isCurrent: Bool

    /// True, if the application is an official application or uses the api_id of an official application
    public let isOfficialApplication: Bool

    /// True, if a password is needed to complete authorization of the session
    public let isPasswordPending: Bool

    /// Point in time (Unix timestamp) when the session was last used
    public let lastActiveDate: Int

    /// Point in time (Unix timestamp) when the user has logged in
    public let logInDate: Int

    /// Operating system the application has been run or is running on, as provided by the application
    public let platform: String

    /// Region code from which the session was created, based on the IP address
    public let region: String

    /// Version of the operating system the application has been run or is running on, as provided by the application
    public let systemVersion: String

    /// Session type based on the system and application version, which can be used to display a corresponding icon
    public let type: SessionType


    public init(
        apiId: Int,
        applicationName: String,
        applicationVersion: String,
        canAcceptCalls: Bool,
        canAcceptSecretChats: Bool,
        country: String,
        deviceModel: String,
        id: TdInt64,
        ip: String,
        isCurrent: Bool,
        isOfficialApplication: Bool,
        isPasswordPending: Bool,
        lastActiveDate: Int,
        logInDate: Int,
        platform: String,
        region: String,
        systemVersion: String,
        type: SessionType
    ) {
        self.apiId = apiId
        self.applicationName = applicationName
        self.applicationVersion = applicationVersion
        self.canAcceptCalls = canAcceptCalls
        self.canAcceptSecretChats = canAcceptSecretChats
        self.country = country
        self.deviceModel = deviceModel
        self.id = id
        self.ip = ip
        self.isCurrent = isCurrent
        self.isOfficialApplication = isOfficialApplication
        self.isPasswordPending = isPasswordPending
        self.lastActiveDate = lastActiveDate
        self.logInDate = logInDate
        self.platform = platform
        self.region = region
        self.systemVersion = systemVersion
        self.type = type
    }
}

