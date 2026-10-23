//
//  TonCenterApiRequestType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// Describes type of a request to TON Center API
public indirect enum TonCenterApiRequestType: Codable, Equatable, Hashable {

    /// A GET request
    case tonCenterApiRequestTypeGet(TonCenterApiRequestTypeGet)

    /// A POST request
    case tonCenterApiRequestTypePost(TonCenterApiRequestTypePost)


    private enum Kind: String, Codable {
        case tonCenterApiRequestTypeGet
        case tonCenterApiRequestTypePost
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .tonCenterApiRequestTypeGet:
            let value = try TonCenterApiRequestTypeGet(from: decoder)
            self = .tonCenterApiRequestTypeGet(value)
        case .tonCenterApiRequestTypePost:
            let value = try TonCenterApiRequestTypePost(from: decoder)
            self = .tonCenterApiRequestTypePost(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .tonCenterApiRequestTypeGet(let value):
            try container.encode(Kind.tonCenterApiRequestTypeGet, forKey: .type)
            try value.encode(to: encoder)
        case .tonCenterApiRequestTypePost(let value):
            try container.encode(Kind.tonCenterApiRequestTypePost, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A GET request
public struct TonCenterApiRequestTypeGet: Codable, Equatable, Hashable {

    /// URL-encoded query of the request
    public let query: String


    public init(query: String) {
        self.query = query
    }
}

/// A POST request
public struct TonCenterApiRequestTypePost: Codable, Equatable, Hashable {

    /// Payload of the request
    public let payload: String


    public init(payload: String) {
        self.payload = payload
    }
}

