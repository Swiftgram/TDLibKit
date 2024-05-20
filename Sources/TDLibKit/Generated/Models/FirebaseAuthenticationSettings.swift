//
//  FirebaseAuthenticationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains settings for Firebase Authentication in the official applications
public indirect enum FirebaseAuthenticationSettings: Codable, Equatable, Hashable {

    /// Settings for Firebase Authentication in the official Android application
    case firebaseAuthenticationSettingsAndroid

    /// Settings for Firebase Authentication in the official iOS application
    case firebaseAuthenticationSettingsIos(FirebaseAuthenticationSettingsIos)


    private enum Kind: String, Codable {
        case firebaseAuthenticationSettingsAndroid
        case firebaseAuthenticationSettingsIos
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .firebaseAuthenticationSettingsAndroid:
            self = .firebaseAuthenticationSettingsAndroid
        case .firebaseAuthenticationSettingsIos:
            let value = try FirebaseAuthenticationSettingsIos(from: decoder)
            self = .firebaseAuthenticationSettingsIos(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .firebaseAuthenticationSettingsAndroid:
            try container.encode(Kind.firebaseAuthenticationSettingsAndroid, forKey: .type)
        case .firebaseAuthenticationSettingsIos(let value):
            try container.encode(Kind.firebaseAuthenticationSettingsIos, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Settings for Firebase Authentication in the official iOS application
public struct FirebaseAuthenticationSettingsIos: Codable, Equatable, Hashable {

    /// Device token from Apple Push Notification service
    public let deviceToken: String

    /// True, if App Sandbox is enabled
    public let isAppSandbox: Bool


    public init(
        deviceToken: String,
        isAppSandbox: Bool
    ) {
        self.deviceToken = deviceToken
        self.isAppSandbox = isAppSandbox
    }
}

