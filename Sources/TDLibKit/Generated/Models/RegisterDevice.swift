//
//  RegisterDevice.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-64264b0f
//  https://github.com/tdlib/td/tree/64264b0f
//

import Foundation


/// Registers the currently used device for receiving push notifications. Returns a globally unique identifier of the push notification subscription
public struct RegisterDevice: Codable, Equatable, Hashable {

    /// Device token
    public let deviceToken: DeviceToken?

    /// List of user identifiers of other users currently using the application
    public let otherUserIds: [Int64]?


    public init(
        deviceToken: DeviceToken?,
        otherUserIds: [Int64]?
    ) {
        self.deviceToken = deviceToken
        self.otherUserIds = otherUserIds
    }
}

