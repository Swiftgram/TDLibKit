//
//  SessionDeviceType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-d6debbb2
//  https://github.com/tdlib/td/tree/d6debbb2
//

import Foundation


/// Represents the type of device from which session was created
public indirect enum SessionDeviceType: Codable, Equatable, Hashable {

    /// The session is running on an Android device
    case sessionDeviceTypeAndroid

    /// The session is running on a generic Apple device
    case sessionDeviceTypeApple

    /// The session is running on the Brave browser
    case sessionDeviceTypeBrave

    /// The session is running on the Chrome browser
    case sessionDeviceTypeChrome

    /// The session is running on the Edge browser
    case sessionDeviceTypeEdge

    /// The session is running on the Firefox browser
    case sessionDeviceTypeFirefox

    /// The session is running on an iPad device
    case sessionDeviceTypeIpad

    /// The session is running on an iPhone device
    case sessionDeviceTypeIphone

    /// The session is running on a Linux device
    case sessionDeviceTypeLinux

    /// The session is running on a Mac device
    case sessionDeviceTypeMac

    /// The session is running on the Opera browser
    case sessionDeviceTypeOpera

    /// The session is running on the Safari browser
    case sessionDeviceTypeSafari

    /// The session is running on an Ubuntu device
    case sessionDeviceTypeUbuntu

    /// The session is running on an unknown type of device
    case sessionDeviceTypeUnknown

    /// The session is running on the Vivaldi browser
    case sessionDeviceTypeVivaldi

    /// The session is running on a Windows device
    case sessionDeviceTypeWindows

    /// The session is running on an Xbox console
    case sessionDeviceTypeXbox


    private enum Kind: String, Codable {
        case sessionDeviceTypeAndroid
        case sessionDeviceTypeApple
        case sessionDeviceTypeBrave
        case sessionDeviceTypeChrome
        case sessionDeviceTypeEdge
        case sessionDeviceTypeFirefox
        case sessionDeviceTypeIpad
        case sessionDeviceTypeIphone
        case sessionDeviceTypeLinux
        case sessionDeviceTypeMac
        case sessionDeviceTypeOpera
        case sessionDeviceTypeSafari
        case sessionDeviceTypeUbuntu
        case sessionDeviceTypeUnknown
        case sessionDeviceTypeVivaldi
        case sessionDeviceTypeWindows
        case sessionDeviceTypeXbox
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .sessionDeviceTypeAndroid:
            self = .sessionDeviceTypeAndroid
        case .sessionDeviceTypeApple:
            self = .sessionDeviceTypeApple
        case .sessionDeviceTypeBrave:
            self = .sessionDeviceTypeBrave
        case .sessionDeviceTypeChrome:
            self = .sessionDeviceTypeChrome
        case .sessionDeviceTypeEdge:
            self = .sessionDeviceTypeEdge
        case .sessionDeviceTypeFirefox:
            self = .sessionDeviceTypeFirefox
        case .sessionDeviceTypeIpad:
            self = .sessionDeviceTypeIpad
        case .sessionDeviceTypeIphone:
            self = .sessionDeviceTypeIphone
        case .sessionDeviceTypeLinux:
            self = .sessionDeviceTypeLinux
        case .sessionDeviceTypeMac:
            self = .sessionDeviceTypeMac
        case .sessionDeviceTypeOpera:
            self = .sessionDeviceTypeOpera
        case .sessionDeviceTypeSafari:
            self = .sessionDeviceTypeSafari
        case .sessionDeviceTypeUbuntu:
            self = .sessionDeviceTypeUbuntu
        case .sessionDeviceTypeUnknown:
            self = .sessionDeviceTypeUnknown
        case .sessionDeviceTypeVivaldi:
            self = .sessionDeviceTypeVivaldi
        case .sessionDeviceTypeWindows:
            self = .sessionDeviceTypeWindows
        case .sessionDeviceTypeXbox:
            self = .sessionDeviceTypeXbox
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .sessionDeviceTypeAndroid:
            try container.encode(Kind.sessionDeviceTypeAndroid, forKey: .type)
        case .sessionDeviceTypeApple:
            try container.encode(Kind.sessionDeviceTypeApple, forKey: .type)
        case .sessionDeviceTypeBrave:
            try container.encode(Kind.sessionDeviceTypeBrave, forKey: .type)
        case .sessionDeviceTypeChrome:
            try container.encode(Kind.sessionDeviceTypeChrome, forKey: .type)
        case .sessionDeviceTypeEdge:
            try container.encode(Kind.sessionDeviceTypeEdge, forKey: .type)
        case .sessionDeviceTypeFirefox:
            try container.encode(Kind.sessionDeviceTypeFirefox, forKey: .type)
        case .sessionDeviceTypeIpad:
            try container.encode(Kind.sessionDeviceTypeIpad, forKey: .type)
        case .sessionDeviceTypeIphone:
            try container.encode(Kind.sessionDeviceTypeIphone, forKey: .type)
        case .sessionDeviceTypeLinux:
            try container.encode(Kind.sessionDeviceTypeLinux, forKey: .type)
        case .sessionDeviceTypeMac:
            try container.encode(Kind.sessionDeviceTypeMac, forKey: .type)
        case .sessionDeviceTypeOpera:
            try container.encode(Kind.sessionDeviceTypeOpera, forKey: .type)
        case .sessionDeviceTypeSafari:
            try container.encode(Kind.sessionDeviceTypeSafari, forKey: .type)
        case .sessionDeviceTypeUbuntu:
            try container.encode(Kind.sessionDeviceTypeUbuntu, forKey: .type)
        case .sessionDeviceTypeUnknown:
            try container.encode(Kind.sessionDeviceTypeUnknown, forKey: .type)
        case .sessionDeviceTypeVivaldi:
            try container.encode(Kind.sessionDeviceTypeVivaldi, forKey: .type)
        case .sessionDeviceTypeWindows:
            try container.encode(Kind.sessionDeviceTypeWindows, forKey: .type)
        case .sessionDeviceTypeXbox:
            try container.encode(Kind.sessionDeviceTypeXbox, forKey: .type)
        }
    }
}

