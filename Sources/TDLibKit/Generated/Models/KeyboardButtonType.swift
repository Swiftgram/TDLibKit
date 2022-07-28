//
//  KeyboardButtonType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes a keyboard button type
public enum KeyboardButtonType: Codable, Equatable {

    /// A simple button, with text that must be sent when the button is pressed
    case keyboardButtonTypeText

    /// A button that sends the user's phone number when pressed; available only in private chats
    case keyboardButtonTypeRequestPhoneNumber

    /// A button that sends the user's location when pressed; available only in private chats
    case keyboardButtonTypeRequestLocation

    /// A button that allows the user to create and send a poll when pressed; available only in private chats
    case keyboardButtonTypeRequestPoll(KeyboardButtonTypeRequestPoll)

    /// A button that opens a Web App by calling getWebAppUrl
    case keyboardButtonTypeWebApp(KeyboardButtonTypeWebApp)


    private enum Kind: String, Codable {
        case keyboardButtonTypeText
        case keyboardButtonTypeRequestPhoneNumber
        case keyboardButtonTypeRequestLocation
        case keyboardButtonTypeRequestPoll
        case keyboardButtonTypeWebApp
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .keyboardButtonTypeText:
            self = .keyboardButtonTypeText
        case .keyboardButtonTypeRequestPhoneNumber:
            self = .keyboardButtonTypeRequestPhoneNumber
        case .keyboardButtonTypeRequestLocation:
            self = .keyboardButtonTypeRequestLocation
        case .keyboardButtonTypeRequestPoll:
            let value = try KeyboardButtonTypeRequestPoll(from: decoder)
            self = .keyboardButtonTypeRequestPoll(value)
        case .keyboardButtonTypeWebApp:
            let value = try KeyboardButtonTypeWebApp(from: decoder)
            self = .keyboardButtonTypeWebApp(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .keyboardButtonTypeText:
            try container.encode(Kind.keyboardButtonTypeText, forKey: .type)
        case .keyboardButtonTypeRequestPhoneNumber:
            try container.encode(Kind.keyboardButtonTypeRequestPhoneNumber, forKey: .type)
        case .keyboardButtonTypeRequestLocation:
            try container.encode(Kind.keyboardButtonTypeRequestLocation, forKey: .type)
        case .keyboardButtonTypeRequestPoll(let value):
            try container.encode(Kind.keyboardButtonTypeRequestPoll, forKey: .type)
            try value.encode(to: encoder)
        case .keyboardButtonTypeWebApp(let value):
            try container.encode(Kind.keyboardButtonTypeWebApp, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A button that allows the user to create and send a poll when pressed; available only in private chats
public struct KeyboardButtonTypeRequestPoll: Codable, Equatable {

    /// If true, only polls in quiz mode must be allowed to create
    public let forceQuiz: Bool

    /// If true, only regular polls must be allowed to create
    public let forceRegular: Bool


    public init(
        forceQuiz: Bool,
        forceRegular: Bool
    ) {
        self.forceQuiz = forceQuiz
        self.forceRegular = forceRegular
    }
}

/// A button that opens a Web App by calling getWebAppUrl
public struct KeyboardButtonTypeWebApp: Codable, Equatable {

    /// An HTTP URL to pass to getWebAppUrl
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

