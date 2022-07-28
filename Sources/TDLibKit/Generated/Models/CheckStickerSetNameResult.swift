//
//  CheckStickerSetNameResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Represents result of checking whether a name can be used for a new sticker set
public enum CheckStickerSetNameResult: Codable, Equatable {

    /// The name can be set
    case checkStickerSetNameResultOk

    /// The name is invalid
    case checkStickerSetNameResultNameInvalid

    /// The name is occupied
    case checkStickerSetNameResultNameOccupied


    private enum Kind: String, Codable {
        case checkStickerSetNameResultOk
        case checkStickerSetNameResultNameInvalid
        case checkStickerSetNameResultNameOccupied
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .checkStickerSetNameResultOk:
            self = .checkStickerSetNameResultOk
        case .checkStickerSetNameResultNameInvalid:
            self = .checkStickerSetNameResultNameInvalid
        case .checkStickerSetNameResultNameOccupied:
            self = .checkStickerSetNameResultNameOccupied
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .checkStickerSetNameResultOk:
            try container.encode(Kind.checkStickerSetNameResultOk, forKey: .type)
        case .checkStickerSetNameResultNameInvalid:
            try container.encode(Kind.checkStickerSetNameResultNameInvalid, forKey: .type)
        case .checkStickerSetNameResultNameOccupied:
            try container.encode(Kind.checkStickerSetNameResultNameOccupied, forKey: .type)
        }
    }
}

