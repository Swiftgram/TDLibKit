//
//  WebProxyCarrierError.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-025086e3
//  https://github.com/tdlib/td/tree/025086e3
//

import Foundation


/// Describes the reason why a web proxy carrier failed
public indirect enum WebProxyCarrierError: Codable, Equatable, Hashable {

    /// The application can't open the carrier, because the platform can't create hidden web views or define the bridge object; TDLib will not retry until the proxy is enabled again
    case webProxyCarrierErrorUnsupported

    /// The application can't open the carrier now, for example, because it is in the background; TDLib will request it again after the next call to setNetworkType or after a delay
    case webProxyCarrierErrorPaused

    /// The page failed to load: a network, TLS, or HTTP error, or a forbidden navigation
    case webProxyCarrierErrorLoadFailed(WebProxyCarrierErrorLoadFailed)

    /// The web view or its renderer process was terminated, or passing data between the application and the page failed
    case webProxyCarrierErrorTerminated

    /// The application refused to open a temporary carrier
    case webProxyCarrierErrorRefused


    private enum Kind: String, Codable {
        case webProxyCarrierErrorUnsupported
        case webProxyCarrierErrorPaused
        case webProxyCarrierErrorLoadFailed
        case webProxyCarrierErrorTerminated
        case webProxyCarrierErrorRefused
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .webProxyCarrierErrorUnsupported:
            self = .webProxyCarrierErrorUnsupported
        case .webProxyCarrierErrorPaused:
            self = .webProxyCarrierErrorPaused
        case .webProxyCarrierErrorLoadFailed:
            let value = try WebProxyCarrierErrorLoadFailed(from: decoder)
            self = .webProxyCarrierErrorLoadFailed(value)
        case .webProxyCarrierErrorTerminated:
            self = .webProxyCarrierErrorTerminated
        case .webProxyCarrierErrorRefused:
            self = .webProxyCarrierErrorRefused
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .webProxyCarrierErrorUnsupported:
            try container.encode(Kind.webProxyCarrierErrorUnsupported, forKey: .type)
        case .webProxyCarrierErrorPaused:
            try container.encode(Kind.webProxyCarrierErrorPaused, forKey: .type)
        case .webProxyCarrierErrorLoadFailed(let value):
            try container.encode(Kind.webProxyCarrierErrorLoadFailed, forKey: .type)
            try value.encode(to: encoder)
        case .webProxyCarrierErrorTerminated:
            try container.encode(Kind.webProxyCarrierErrorTerminated, forKey: .type)
        case .webProxyCarrierErrorRefused:
            try container.encode(Kind.webProxyCarrierErrorRefused, forKey: .type)
        }
    }
}

/// The page failed to load: a network, TLS, or HTTP error, or a forbidden navigation
public struct WebProxyCarrierErrorLoadFailed: Codable, Equatable, Hashable {

    /// The error to be logged; must not contain the URL
    public let message: String


    public init(message: String) {
        self.message = message
    }
}

