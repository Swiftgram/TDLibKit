//
//  ProxyType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes the type of proxy server
public indirect enum ProxyType: Codable, Equatable, Hashable {

    /// A SOCKS5 proxy server
    case proxyTypeSocks5(ProxyTypeSocks5)

    /// A HTTP transparent proxy server
    case proxyTypeHttp(ProxyTypeHttp)

    /// An MTProto proxy server
    case proxyTypeMtproto(ProxyTypeMtproto)


    private enum Kind: String, Codable {
        case proxyTypeSocks5
        case proxyTypeHttp
        case proxyTypeMtproto
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .proxyTypeSocks5:
            let value = try ProxyTypeSocks5(from: decoder)
            self = .proxyTypeSocks5(value)
        case .proxyTypeHttp:
            let value = try ProxyTypeHttp(from: decoder)
            self = .proxyTypeHttp(value)
        case .proxyTypeMtproto:
            let value = try ProxyTypeMtproto(from: decoder)
            self = .proxyTypeMtproto(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .proxyTypeSocks5(let value):
            try container.encode(Kind.proxyTypeSocks5, forKey: .type)
            try value.encode(to: encoder)
        case .proxyTypeHttp(let value):
            try container.encode(Kind.proxyTypeHttp, forKey: .type)
            try value.encode(to: encoder)
        case .proxyTypeMtproto(let value):
            try container.encode(Kind.proxyTypeMtproto, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A SOCKS5 proxy server
public struct ProxyTypeSocks5: Codable, Equatable, Hashable {

    /// Password for logging in; may be empty
    public let password: String

    /// Username for logging in; may be empty
    public let username: String


    public init(
        password: String,
        username: String
    ) {
        self.password = password
        self.username = username
    }
}

/// A HTTP transparent proxy server
public struct ProxyTypeHttp: Codable, Equatable, Hashable {

    /// Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method
    public let httpOnly: Bool

    /// Password for logging in; may be empty
    public let password: String

    /// Username for logging in; may be empty
    public let username: String


    public init(
        httpOnly: Bool,
        password: String,
        username: String
    ) {
        self.httpOnly = httpOnly
        self.password = password
        self.username = username
    }
}

/// An MTProto proxy server
public struct ProxyTypeMtproto: Codable, Equatable, Hashable {

    /// The proxy's secret in hexadecimal encoding
    public let secret: String


    public init(secret: String) {
        self.secret = secret
    }
}

