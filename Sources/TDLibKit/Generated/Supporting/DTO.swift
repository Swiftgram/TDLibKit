//
//  DTO.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


public final class DTO<T: Codable>: Codable {
    let type: String
    var extra: String?
    let payload: T
    let encoder: JSONEncoder?

    public init(_ payload: T, encoder: JSONEncoder? = nil) {
        self.payload = payload
        self.encoder = encoder
        let payloadType = String(describing: T.self)
        self.type = payloadType.prefix(1).lowercased() + payloadType.dropFirst()
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        type = try container.decode(String.self, forKey: .type)
        extra = try container.decodeIfPresent(String.self, forKey: .extra)
        payload = try T(from: decoder)
        encoder = nil
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(extra, forKey: .extra)
        try payload.encode(to: encoder)
    }
}

extension DTO: TdQuery {

    public func make(with extra: String? = nil) throws -> Data {
        self.extra = extra
        let encoder = self.encoder ?? JSONEncoder()
        return try encoder.encode(self)
    }
}
