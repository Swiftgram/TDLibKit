//
//  WebProxyCarrierMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
//

import Foundation


/// Describes a message passed by the page of a web proxy carrier to postMessage of the bridge object
public indirect enum WebProxyCarrierMessage: Codable, Equatable, Hashable {

    /// A string message
    case webProxyCarrierMessageText(WebProxyCarrierMessageText)

    /// A binary message, passed as an ArrayBuffer or a typed array
    case webProxyCarrierMessageBinary(WebProxyCarrierMessageBinary)


    private enum Kind: String, Codable {
        case webProxyCarrierMessageText
        case webProxyCarrierMessageBinary
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .webProxyCarrierMessageText:
            let value = try WebProxyCarrierMessageText(from: decoder)
            self = .webProxyCarrierMessageText(value)
        case .webProxyCarrierMessageBinary:
            let value = try WebProxyCarrierMessageBinary(from: decoder)
            self = .webProxyCarrierMessageBinary(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .webProxyCarrierMessageText(let value):
            try container.encode(Kind.webProxyCarrierMessageText, forKey: .type)
            try value.encode(to: encoder)
        case .webProxyCarrierMessageBinary(let value):
            try container.encode(Kind.webProxyCarrierMessageBinary, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A string message
public struct WebProxyCarrierMessageText: Codable, Equatable, Hashable {

    /// The string
    public let text: String


    public init(text: String) {
        self.text = text
    }
}

/// A binary message, passed as an ArrayBuffer or a typed array
public struct WebProxyCarrierMessageBinary: Codable, Equatable, Hashable {

    /// Data of the message
    public let data: Data


    public init(data: Data) {
        self.data = data
    }
}

