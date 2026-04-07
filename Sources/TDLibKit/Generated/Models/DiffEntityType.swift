//
//  DiffEntityType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8ff05a0e
//  https://github.com/tdlib/td/tree/8ff05a0e
//

import Foundation


/// Represents a change of a text
public indirect enum DiffEntityType: Codable, Equatable, Hashable {

    /// Addition of some text
    case diffEntityTypeInsert

    /// Change of some text
    case diffEntityTypeReplace(DiffEntityTypeReplace)

    /// Removal of some text
    case diffEntityTypeDelete


    private enum Kind: String, Codable {
        case diffEntityTypeInsert
        case diffEntityTypeReplace
        case diffEntityTypeDelete
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .diffEntityTypeInsert:
            self = .diffEntityTypeInsert
        case .diffEntityTypeReplace:
            let value = try DiffEntityTypeReplace(from: decoder)
            self = .diffEntityTypeReplace(value)
        case .diffEntityTypeDelete:
            self = .diffEntityTypeDelete
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .diffEntityTypeInsert:
            try container.encode(Kind.diffEntityTypeInsert, forKey: .type)
        case .diffEntityTypeReplace(let value):
            try container.encode(Kind.diffEntityTypeReplace, forKey: .type)
            try value.encode(to: encoder)
        case .diffEntityTypeDelete:
            try container.encode(Kind.diffEntityTypeDelete, forKey: .type)
        }
    }
}

/// Change of some text
public struct DiffEntityTypeReplace: Codable, Equatable, Hashable {

    /// The old text
    public let oldText: String


    public init(oldText: String) {
        self.oldText = oldText
    }
}

