//
//  WebAppOpenMode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-721300bc
//  https://github.com/tdlib/td/tree/721300bc
//

import Foundation


/// Describes mode in which a Web App is opened
public indirect enum WebAppOpenMode: Codable, Equatable, Hashable {

    /// The Web App is opened in the compact mode
    case webAppOpenModeCompact

    /// The Web App is opened in the full-size mode
    case webAppOpenModeFullSize

    /// The Web App is opened in the full-screen mode
    case webAppOpenModeFullScreen


    private enum Kind: String, Codable {
        case webAppOpenModeCompact
        case webAppOpenModeFullSize
        case webAppOpenModeFullScreen
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .webAppOpenModeCompact:
            self = .webAppOpenModeCompact
        case .webAppOpenModeFullSize:
            self = .webAppOpenModeFullSize
        case .webAppOpenModeFullScreen:
            self = .webAppOpenModeFullScreen
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .webAppOpenModeCompact:
            try container.encode(Kind.webAppOpenModeCompact, forKey: .type)
        case .webAppOpenModeFullSize:
            try container.encode(Kind.webAppOpenModeFullSize, forKey: .type)
        case .webAppOpenModeFullScreen:
            try container.encode(Kind.webAppOpenModeFullScreen, forKey: .type)
        }
    }
}

