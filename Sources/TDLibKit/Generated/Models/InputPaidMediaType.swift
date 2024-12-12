//
//  InputPaidMediaType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-d961806b
//  https://github.com/tdlib/td/tree/d961806b
//

import Foundation


/// Describes type of paid media to sent
public indirect enum InputPaidMediaType: Codable, Equatable, Hashable {

    /// The media is a photo. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20
    case inputPaidMediaTypePhoto

    /// The media is a video
    case inputPaidMediaTypeVideo(InputPaidMediaTypeVideo)


    private enum Kind: String, Codable {
        case inputPaidMediaTypePhoto
        case inputPaidMediaTypeVideo
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputPaidMediaTypePhoto:
            self = .inputPaidMediaTypePhoto
        case .inputPaidMediaTypeVideo:
            let value = try InputPaidMediaTypeVideo(from: decoder)
            self = .inputPaidMediaTypeVideo(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputPaidMediaTypePhoto:
            try container.encode(Kind.inputPaidMediaTypePhoto, forKey: .type)
        case .inputPaidMediaTypeVideo(let value):
            try container.encode(Kind.inputPaidMediaTypeVideo, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The media is a video
public struct InputPaidMediaTypeVideo: Codable, Equatable, Hashable {

    /// Duration of the video, in seconds
    public let duration: Int

    /// True, if the video is expected to be streamed
    public let supportsStreaming: Bool


    public init(
        duration: Int,
        supportsStreaming: Bool
    ) {
        self.duration = duration
        self.supportsStreaming = supportsStreaming
    }
}

