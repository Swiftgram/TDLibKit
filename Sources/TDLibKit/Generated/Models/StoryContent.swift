//
//  StoryContent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains the content of a story
public indirect enum StoryContent: Codable, Equatable, Hashable {

    /// A photo story
    case storyContentPhoto(StoryContentPhoto)

    /// A video story
    case storyContentVideo(StoryContentVideo)

    /// A story content that is not supported in the current TDLib version
    case storyContentUnsupported


    private enum Kind: String, Codable {
        case storyContentPhoto
        case storyContentVideo
        case storyContentUnsupported
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .storyContentPhoto:
            let value = try StoryContentPhoto(from: decoder)
            self = .storyContentPhoto(value)
        case .storyContentVideo:
            let value = try StoryContentVideo(from: decoder)
            self = .storyContentVideo(value)
        case .storyContentUnsupported:
            self = .storyContentUnsupported
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .storyContentPhoto(let value):
            try container.encode(Kind.storyContentPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .storyContentVideo(let value):
            try container.encode(Kind.storyContentVideo, forKey: .type)
            try value.encode(to: encoder)
        case .storyContentUnsupported:
            try container.encode(Kind.storyContentUnsupported, forKey: .type)
        }
    }
}

/// A photo story
public struct StoryContentPhoto: Codable, Equatable, Hashable {

    /// The photo
    public let photo: Photo


    public init(photo: Photo) {
        self.photo = photo
    }
}

/// A video story
public struct StoryContentVideo: Codable, Equatable, Hashable {

    /// Alternative version of the video in MPEG4 format, encoded by x264 codec; may be null
    public let alternativeVideo: StoryVideo?

    /// The video in MPEG4 format
    public let video: StoryVideo


    public init(
        alternativeVideo: StoryVideo?,
        video: StoryVideo
    ) {
        self.alternativeVideo = alternativeVideo
        self.video = video
    }
}

