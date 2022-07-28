//
//  StickerType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes type of a sticker
public enum StickerType: Codable, Equatable {

    /// The sticker is an image in WEBP format
    case stickerTypeStatic

    /// The sticker is an animation in TGS format
    case stickerTypeAnimated

    /// The sticker is a video in WEBM format
    case stickerTypeVideo

    /// The sticker is a mask in WEBP format to be placed on photos or videos
    case stickerTypeMask(StickerTypeMask)


    private enum Kind: String, Codable {
        case stickerTypeStatic
        case stickerTypeAnimated
        case stickerTypeVideo
        case stickerTypeMask
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .stickerTypeStatic:
            self = .stickerTypeStatic
        case .stickerTypeAnimated:
            self = .stickerTypeAnimated
        case .stickerTypeVideo:
            self = .stickerTypeVideo
        case .stickerTypeMask:
            let value = try StickerTypeMask(from: decoder)
            self = .stickerTypeMask(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .stickerTypeStatic:
            try container.encode(Kind.stickerTypeStatic, forKey: .type)
        case .stickerTypeAnimated:
            try container.encode(Kind.stickerTypeAnimated, forKey: .type)
        case .stickerTypeVideo:
            try container.encode(Kind.stickerTypeVideo, forKey: .type)
        case .stickerTypeMask(let value):
            try container.encode(Kind.stickerTypeMask, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The sticker is a mask in WEBP format to be placed on photos or videos
public struct StickerTypeMask: Codable, Equatable {

    /// Position where the mask is placed; may be null
    public let maskPosition: MaskPosition?


    public init(maskPosition: MaskPosition?) {
        self.maskPosition = maskPosition
    }
}

