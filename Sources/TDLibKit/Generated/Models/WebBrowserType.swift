//
//  WebBrowserType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Describes the type of web browser
public indirect enum WebBrowserType: Codable, Equatable, Hashable {

    /// An external web browser
    case webBrowserTypeExternal

    /// The in-app browser
    case webBrowserTypeInApp


    private enum Kind: String, Codable {
        case webBrowserTypeExternal
        case webBrowserTypeInApp
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .webBrowserTypeExternal:
            self = .webBrowserTypeExternal
        case .webBrowserTypeInApp:
            self = .webBrowserTypeInApp
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .webBrowserTypeExternal:
            try container.encode(Kind.webBrowserTypeExternal, forKey: .type)
        case .webBrowserTypeInApp:
            try container.encode(Kind.webBrowserTypeInApp, forKey: .type)
        }
    }
}

