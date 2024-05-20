//
//  SessionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents the type of session
public indirect enum SessionType: Codable, Equatable, Hashable {

    /// The session is running on an Android device
    case sessionTypeAndroid

    /// The session is running on a generic Apple device
    case sessionTypeApple

    /// The session is running on the Brave browser
    case sessionTypeBrave

    /// The session is running on the Chrome browser
    case sessionTypeChrome

    /// The session is running on the Edge browser
    case sessionTypeEdge

    /// The session is running on the Firefox browser
    case sessionTypeFirefox

    /// The session is running on an iPad device
    case sessionTypeIpad

    /// The session is running on an iPhone device
    case sessionTypeIphone

    /// The session is running on a Linux device
    case sessionTypeLinux

    /// The session is running on a Mac device
    case sessionTypeMac

    /// The session is running on the Opera browser
    case sessionTypeOpera

    /// The session is running on the Safari browser
    case sessionTypeSafari

    /// The session is running on an Ubuntu device
    case sessionTypeUbuntu

    /// The session is running on an unknown type of device
    case sessionTypeUnknown

    /// The session is running on the Vivaldi browser
    case sessionTypeVivaldi

    /// The session is running on a Windows device
    case sessionTypeWindows

    /// The session is running on an Xbox console
    case sessionTypeXbox


    private enum Kind: String, Codable {
        case sessionTypeAndroid
        case sessionTypeApple
        case sessionTypeBrave
        case sessionTypeChrome
        case sessionTypeEdge
        case sessionTypeFirefox
        case sessionTypeIpad
        case sessionTypeIphone
        case sessionTypeLinux
        case sessionTypeMac
        case sessionTypeOpera
        case sessionTypeSafari
        case sessionTypeUbuntu
        case sessionTypeUnknown
        case sessionTypeVivaldi
        case sessionTypeWindows
        case sessionTypeXbox
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .sessionTypeAndroid:
            self = .sessionTypeAndroid
        case .sessionTypeApple:
            self = .sessionTypeApple
        case .sessionTypeBrave:
            self = .sessionTypeBrave
        case .sessionTypeChrome:
            self = .sessionTypeChrome
        case .sessionTypeEdge:
            self = .sessionTypeEdge
        case .sessionTypeFirefox:
            self = .sessionTypeFirefox
        case .sessionTypeIpad:
            self = .sessionTypeIpad
        case .sessionTypeIphone:
            self = .sessionTypeIphone
        case .sessionTypeLinux:
            self = .sessionTypeLinux
        case .sessionTypeMac:
            self = .sessionTypeMac
        case .sessionTypeOpera:
            self = .sessionTypeOpera
        case .sessionTypeSafari:
            self = .sessionTypeSafari
        case .sessionTypeUbuntu:
            self = .sessionTypeUbuntu
        case .sessionTypeUnknown:
            self = .sessionTypeUnknown
        case .sessionTypeVivaldi:
            self = .sessionTypeVivaldi
        case .sessionTypeWindows:
            self = .sessionTypeWindows
        case .sessionTypeXbox:
            self = .sessionTypeXbox
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .sessionTypeAndroid:
            try container.encode(Kind.sessionTypeAndroid, forKey: .type)
        case .sessionTypeApple:
            try container.encode(Kind.sessionTypeApple, forKey: .type)
        case .sessionTypeBrave:
            try container.encode(Kind.sessionTypeBrave, forKey: .type)
        case .sessionTypeChrome:
            try container.encode(Kind.sessionTypeChrome, forKey: .type)
        case .sessionTypeEdge:
            try container.encode(Kind.sessionTypeEdge, forKey: .type)
        case .sessionTypeFirefox:
            try container.encode(Kind.sessionTypeFirefox, forKey: .type)
        case .sessionTypeIpad:
            try container.encode(Kind.sessionTypeIpad, forKey: .type)
        case .sessionTypeIphone:
            try container.encode(Kind.sessionTypeIphone, forKey: .type)
        case .sessionTypeLinux:
            try container.encode(Kind.sessionTypeLinux, forKey: .type)
        case .sessionTypeMac:
            try container.encode(Kind.sessionTypeMac, forKey: .type)
        case .sessionTypeOpera:
            try container.encode(Kind.sessionTypeOpera, forKey: .type)
        case .sessionTypeSafari:
            try container.encode(Kind.sessionTypeSafari, forKey: .type)
        case .sessionTypeUbuntu:
            try container.encode(Kind.sessionTypeUbuntu, forKey: .type)
        case .sessionTypeUnknown:
            try container.encode(Kind.sessionTypeUnknown, forKey: .type)
        case .sessionTypeVivaldi:
            try container.encode(Kind.sessionTypeVivaldi, forKey: .type)
        case .sessionTypeWindows:
            try container.encode(Kind.sessionTypeWindows, forKey: .type)
        case .sessionTypeXbox:
            try container.encode(Kind.sessionTypeXbox, forKey: .type)
        }
    }
}

