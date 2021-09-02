//
//  RegisterDevice.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Registers the currently used device for receiving push notifications. Returns a globally unique identifier of the push notification subscription
public struct RegisterDevice: Codable {

    /// Device token
    public let deviceToken: DeviceToken

    /// List of user identifiers of other users currently using the application
    public let otherUserIds: [Int]


    public init(
        deviceToken: DeviceToken,
        otherUserIds: [Int]
    ) {
        self.deviceToken = deviceToken
        self.otherUserIds = otherUserIds
    }
}

