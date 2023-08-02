//
//  StickerFormat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-ff687167
//  https://github.com/tdlib/td/tree/ff687167
//

import Foundation


/// Describes format of a sticker
public enum StickerFormat: Codable, Equatable, Hashable {

    /// The sticker is an image in WEBP format
    case stickerFormatWebp

    /// The sticker is an animation in TGS format
    case stickerFormatTgs

    /// The sticker is a video in WEBM format
    case stickerFormatWebm


    private enum Kind: String, Codable {
        case stickerFormatWebp
        case stickerFormatTgs
        case stickerFormatWebm
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .stickerFormatWebp:
            self = .stickerFormatWebp
        case .stickerFormatTgs:
            self = .stickerFormatTgs
        case .stickerFormatWebm:
            self = .stickerFormatWebm
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .stickerFormatWebp:
            try container.encode(Kind.stickerFormatWebp, forKey: .type)
        case .stickerFormatTgs:
            try container.encode(Kind.stickerFormatTgs, forKey: .type)
        case .stickerFormatWebm:
            try container.encode(Kind.stickerFormatWebm, forKey: .type)
        }
    }
}

