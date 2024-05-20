//
//  Session.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about one session in a Telegram application used by the current user. Sessions must be shown to the user in the returned order
public struct Session: Codable, Equatable, Hashable, Identifiable {

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

    /// Model of the device the application has been run or is running on, as provided by the application
    public let deviceModel: String

    /// Session identifier
    public let id: TdInt64

    /// IP address from which the session was created, in human-readable format
    public let ipAddress: String

    /// True, if this session is the current session
    public let isCurrent: Bool

    /// True, if the application is an official application or uses the api_id of an official application
    public let isOfficialApplication: Bool

    /// True, if a 2-step verification password is needed to complete authorization of the session
    public let isPasswordPending: Bool

    /// True, if the session wasn't confirmed from another session
    public let isUnconfirmed: Bool

    /// Point in time (Unix timestamp) when the session was last used
    public let lastActiveDate: Int

    /// A human-readable description of the location from which the session was created, based on the IP address
    public let location: String

    /// Point in time (Unix timestamp) when the user has logged in
    public let logInDate: Int

    /// Operating system the application has been run or is running on, as provided by the application
    public let platform: String

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
        deviceModel: String,
        id: TdInt64,
        ipAddress: String,
        isCurrent: Bool,
        isOfficialApplication: Bool,
        isPasswordPending: Bool,
        isUnconfirmed: Bool,
        lastActiveDate: Int,
        location: String,
        logInDate: Int,
        platform: String,
        systemVersion: String,
        type: SessionType
    ) {
        self.apiId = apiId
        self.applicationName = applicationName
        self.applicationVersion = applicationVersion
        self.canAcceptCalls = canAcceptCalls
        self.canAcceptSecretChats = canAcceptSecretChats
        self.deviceModel = deviceModel
        self.id = id
        self.ipAddress = ipAddress
        self.isCurrent = isCurrent
        self.isOfficialApplication = isOfficialApplication
        self.isPasswordPending = isPasswordPending
        self.isUnconfirmed = isUnconfirmed
        self.lastActiveDate = lastActiveDate
        self.location = location
        self.logInDate = logInDate
        self.platform = platform
        self.systemVersion = systemVersion
        self.type = type
    }
}

