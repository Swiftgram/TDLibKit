//
//  StickerType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes type of sticker
public indirect enum StickerType: Codable, Equatable, Hashable {

    /// The sticker is a regular sticker
    case stickerTypeRegular

    /// The sticker is a mask in WEBP format to be placed on photos or videos
    case stickerTypeMask

    /// The sticker is a custom emoji to be used inside message text and caption
    case stickerTypeCustomEmoji


    private enum Kind: String, Codable {
        case stickerTypeRegular
        case stickerTypeMask
        case stickerTypeCustomEmoji
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .stickerTypeRegular:
            self = .stickerTypeRegular
        case .stickerTypeMask:
            self = .stickerTypeMask
        case .stickerTypeCustomEmoji:
            self = .stickerTypeCustomEmoji
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .stickerTypeRegular:
            try container.encode(Kind.stickerTypeRegular, forKey: .type)
        case .stickerTypeMask:
            try container.encode(Kind.stickerTypeMask, forKey: .type)
        case .stickerTypeCustomEmoji:
            try container.encode(Kind.stickerTypeCustomEmoji, forKey: .type)
        }
    }
}

