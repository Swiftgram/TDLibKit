//
//  ThumbnailFormat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-33c689aa
//  https://github.com/tdlib/td/tree/33c689aa
//

import Foundation


/// Describes format of the thumbnail
public enum ThumbnailFormat: Codable {

    /// The thumbnail is in JPEG format
    case thumbnailFormatJpeg

    /// The thumbnail is in PNG format. It will be used only for background patterns
    case thumbnailFormatPng

    /// The thumbnail is in WEBP format. It will be used only for some stickers
    case thumbnailFormatWebp

    /// The thumbnail is in static GIF format. It will be used only for some bot inline results
    case thumbnailFormatGif

    /// The thumbnail is in TGS format. It will be used only for animated sticker sets
    case thumbnailFormatTgs

    /// The thumbnail is in MPEG4 format. It will be used only for some animations and videos
    case thumbnailFormatMpeg4


    private enum Kind: String, Codable {
        case thumbnailFormatJpeg
        case thumbnailFormatPng
        case thumbnailFormatWebp
        case thumbnailFormatGif
        case thumbnailFormatTgs
        case thumbnailFormatMpeg4
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .thumbnailFormatJpeg:
            self = .thumbnailFormatJpeg
        case .thumbnailFormatPng:
            self = .thumbnailFormatPng
        case .thumbnailFormatWebp:
            self = .thumbnailFormatWebp
        case .thumbnailFormatGif:
            self = .thumbnailFormatGif
        case .thumbnailFormatTgs:
            self = .thumbnailFormatTgs
        case .thumbnailFormatMpeg4:
            self = .thumbnailFormatMpeg4
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .thumbnailFormatJpeg:
            try container.encode(Kind.thumbnailFormatJpeg, forKey: .type)
        case .thumbnailFormatPng:
            try container.encode(Kind.thumbnailFormatPng, forKey: .type)
        case .thumbnailFormatWebp:
            try container.encode(Kind.thumbnailFormatWebp, forKey: .type)
        case .thumbnailFormatGif:
            try container.encode(Kind.thumbnailFormatGif, forKey: .type)
        case .thumbnailFormatTgs:
            try container.encode(Kind.thumbnailFormatTgs, forKey: .type)
        case .thumbnailFormatMpeg4:
            try container.encode(Kind.thumbnailFormatMpeg4, forKey: .type)
        }
    }
}

