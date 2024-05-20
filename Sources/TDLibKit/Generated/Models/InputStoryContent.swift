//
//  InputStoryContent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// The content of a story to send
public indirect enum InputStoryContent: Codable, Equatable, Hashable {

    /// A photo story
    case inputStoryContentPhoto(InputStoryContentPhoto)

    /// A video story
    case inputStoryContentVideo(InputStoryContentVideo)


    private enum Kind: String, Codable {
        case inputStoryContentPhoto
        case inputStoryContentVideo
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputStoryContentPhoto:
            let value = try InputStoryContentPhoto(from: decoder)
            self = .inputStoryContentPhoto(value)
        case .inputStoryContentVideo:
            let value = try InputStoryContentVideo(from: decoder)
            self = .inputStoryContentVideo(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputStoryContentPhoto(let value):
            try container.encode(Kind.inputStoryContentPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .inputStoryContentVideo(let value):
            try container.encode(Kind.inputStoryContentVideo, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A photo story
public struct InputStoryContentPhoto: Codable, Equatable, Hashable {

    /// File identifiers of the stickers added to the photo, if applicable
    public let addedStickerFileIds: [Int]

    /// Photo to send. The photo must be at most 10 MB in size. The photo size must be 1080x1920
    public let photo: InputFile


    public init(
        addedStickerFileIds: [Int],
        photo: InputFile
    ) {
        self.addedStickerFileIds = addedStickerFileIds
        self.photo = photo
    }
}

/// A video story
public struct InputStoryContentVideo: Codable, Equatable, Hashable {

    /// File identifiers of the stickers added to the video, if applicable
    public let addedStickerFileIds: [Int]

    /// Precise duration of the video, in seconds; 0-60
    public let duration: Double

    /// True, if the video has no sound
    public let isAnimation: Bool

    /// Video to be sent. The video size must be 720x1280. The video must be streamable and stored in MPEG4 format, after encoding with x265 codec and key frames added each second
    public let video: InputFile


    public init(
        addedStickerFileIds: [Int],
        duration: Double,
        isAnimation: Bool,
        video: InputFile
    ) {
        self.addedStickerFileIds = addedStickerFileIds
        self.duration = duration
        self.isAnimation = isAnimation
        self.video = video
    }
}

