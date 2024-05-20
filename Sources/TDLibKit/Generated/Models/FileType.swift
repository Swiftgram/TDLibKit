//
//  FileType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents the type of file
public indirect enum FileType: Codable, Equatable, Hashable {

    /// The data is not a file
    case fileTypeNone

    /// The file is an animation
    case fileTypeAnimation

    /// The file is an audio file
    case fileTypeAudio

    /// The file is a document
    case fileTypeDocument

    /// The file is a notification sound
    case fileTypeNotificationSound

    /// The file is a photo
    case fileTypePhoto

    /// The file is a photo published as a story
    case fileTypePhotoStory

    /// The file is a profile photo
    case fileTypeProfilePhoto

    /// The file was sent to a secret chat (the file type is not known to the server)
    case fileTypeSecret

    /// The file is a thumbnail of a file from a secret chat
    case fileTypeSecretThumbnail

    /// The file is a file from Secure storage used for storing Telegram Passport files
    case fileTypeSecure

    /// The file is a sticker
    case fileTypeSticker

    /// The file is a thumbnail of another file
    case fileTypeThumbnail

    /// The file type is not yet known
    case fileTypeUnknown

    /// The file is a video
    case fileTypeVideo

    /// The file is a video note
    case fileTypeVideoNote

    /// The file is a video published as a story
    case fileTypeVideoStory

    /// The file is a voice note
    case fileTypeVoiceNote

    /// The file is a wallpaper or a background pattern
    case fileTypeWallpaper


    private enum Kind: String, Codable {
        case fileTypeNone
        case fileTypeAnimation
        case fileTypeAudio
        case fileTypeDocument
        case fileTypeNotificationSound
        case fileTypePhoto
        case fileTypePhotoStory
        case fileTypeProfilePhoto
        case fileTypeSecret
        case fileTypeSecretThumbnail
        case fileTypeSecure
        case fileTypeSticker
        case fileTypeThumbnail
        case fileTypeUnknown
        case fileTypeVideo
        case fileTypeVideoNote
        case fileTypeVideoStory
        case fileTypeVoiceNote
        case fileTypeWallpaper
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .fileTypeNone:
            self = .fileTypeNone
        case .fileTypeAnimation:
            self = .fileTypeAnimation
        case .fileTypeAudio:
            self = .fileTypeAudio
        case .fileTypeDocument:
            self = .fileTypeDocument
        case .fileTypeNotificationSound:
            self = .fileTypeNotificationSound
        case .fileTypePhoto:
            self = .fileTypePhoto
        case .fileTypePhotoStory:
            self = .fileTypePhotoStory
        case .fileTypeProfilePhoto:
            self = .fileTypeProfilePhoto
        case .fileTypeSecret:
            self = .fileTypeSecret
        case .fileTypeSecretThumbnail:
            self = .fileTypeSecretThumbnail
        case .fileTypeSecure:
            self = .fileTypeSecure
        case .fileTypeSticker:
            self = .fileTypeSticker
        case .fileTypeThumbnail:
            self = .fileTypeThumbnail
        case .fileTypeUnknown:
            self = .fileTypeUnknown
        case .fileTypeVideo:
            self = .fileTypeVideo
        case .fileTypeVideoNote:
            self = .fileTypeVideoNote
        case .fileTypeVideoStory:
            self = .fileTypeVideoStory
        case .fileTypeVoiceNote:
            self = .fileTypeVoiceNote
        case .fileTypeWallpaper:
            self = .fileTypeWallpaper
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .fileTypeNone:
            try container.encode(Kind.fileTypeNone, forKey: .type)
        case .fileTypeAnimation:
            try container.encode(Kind.fileTypeAnimation, forKey: .type)
        case .fileTypeAudio:
            try container.encode(Kind.fileTypeAudio, forKey: .type)
        case .fileTypeDocument:
            try container.encode(Kind.fileTypeDocument, forKey: .type)
        case .fileTypeNotificationSound:
            try container.encode(Kind.fileTypeNotificationSound, forKey: .type)
        case .fileTypePhoto:
            try container.encode(Kind.fileTypePhoto, forKey: .type)
        case .fileTypePhotoStory:
            try container.encode(Kind.fileTypePhotoStory, forKey: .type)
        case .fileTypeProfilePhoto:
            try container.encode(Kind.fileTypeProfilePhoto, forKey: .type)
        case .fileTypeSecret:
            try container.encode(Kind.fileTypeSecret, forKey: .type)
        case .fileTypeSecretThumbnail:
            try container.encode(Kind.fileTypeSecretThumbnail, forKey: .type)
        case .fileTypeSecure:
            try container.encode(Kind.fileTypeSecure, forKey: .type)
        case .fileTypeSticker:
            try container.encode(Kind.fileTypeSticker, forKey: .type)
        case .fileTypeThumbnail:
            try container.encode(Kind.fileTypeThumbnail, forKey: .type)
        case .fileTypeUnknown:
            try container.encode(Kind.fileTypeUnknown, forKey: .type)
        case .fileTypeVideo:
            try container.encode(Kind.fileTypeVideo, forKey: .type)
        case .fileTypeVideoNote:
            try container.encode(Kind.fileTypeVideoNote, forKey: .type)
        case .fileTypeVideoStory:
            try container.encode(Kind.fileTypeVideoStory, forKey: .type)
        case .fileTypeVoiceNote:
            try container.encode(Kind.fileTypeVoiceNote, forKey: .type)
        case .fileTypeWallpaper:
            try container.encode(Kind.fileTypeWallpaper, forKey: .type)
        }
    }
}

