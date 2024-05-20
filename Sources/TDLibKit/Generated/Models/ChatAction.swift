//
//  ChatAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes the different types of activity in a chat
public indirect enum ChatAction: Codable, Equatable, Hashable {

    /// The user is typing a message
    case chatActionTyping

    /// The user is recording a video
    case chatActionRecordingVideo

    /// The user is uploading a video
    case chatActionUploadingVideo(ChatActionUploadingVideo)

    /// The user is recording a voice note
    case chatActionRecordingVoiceNote

    /// The user is uploading a voice note
    case chatActionUploadingVoiceNote(ChatActionUploadingVoiceNote)

    /// The user is uploading a photo
    case chatActionUploadingPhoto(ChatActionUploadingPhoto)

    /// The user is uploading a document
    case chatActionUploadingDocument(ChatActionUploadingDocument)

    /// The user is picking a sticker to send
    case chatActionChoosingSticker

    /// The user is picking a location or venue to send
    case chatActionChoosingLocation

    /// The user is picking a contact to send
    case chatActionChoosingContact

    /// The user has started to play a game
    case chatActionStartPlayingGame

    /// The user is recording a video note
    case chatActionRecordingVideoNote

    /// The user is uploading a video note
    case chatActionUploadingVideoNote(ChatActionUploadingVideoNote)

    /// The user is watching animations sent by the other party by clicking on an animated emoji
    case chatActionWatchingAnimations(ChatActionWatchingAnimations)

    /// The user has canceled the previous action
    case chatActionCancel


    private enum Kind: String, Codable {
        case chatActionTyping
        case chatActionRecordingVideo
        case chatActionUploadingVideo
        case chatActionRecordingVoiceNote
        case chatActionUploadingVoiceNote
        case chatActionUploadingPhoto
        case chatActionUploadingDocument
        case chatActionChoosingSticker
        case chatActionChoosingLocation
        case chatActionChoosingContact
        case chatActionStartPlayingGame
        case chatActionRecordingVideoNote
        case chatActionUploadingVideoNote
        case chatActionWatchingAnimations
        case chatActionCancel
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatActionTyping:
            self = .chatActionTyping
        case .chatActionRecordingVideo:
            self = .chatActionRecordingVideo
        case .chatActionUploadingVideo:
            let value = try ChatActionUploadingVideo(from: decoder)
            self = .chatActionUploadingVideo(value)
        case .chatActionRecordingVoiceNote:
            self = .chatActionRecordingVoiceNote
        case .chatActionUploadingVoiceNote:
            let value = try ChatActionUploadingVoiceNote(from: decoder)
            self = .chatActionUploadingVoiceNote(value)
        case .chatActionUploadingPhoto:
            let value = try ChatActionUploadingPhoto(from: decoder)
            self = .chatActionUploadingPhoto(value)
        case .chatActionUploadingDocument:
            let value = try ChatActionUploadingDocument(from: decoder)
            self = .chatActionUploadingDocument(value)
        case .chatActionChoosingSticker:
            self = .chatActionChoosingSticker
        case .chatActionChoosingLocation:
            self = .chatActionChoosingLocation
        case .chatActionChoosingContact:
            self = .chatActionChoosingContact
        case .chatActionStartPlayingGame:
            self = .chatActionStartPlayingGame
        case .chatActionRecordingVideoNote:
            self = .chatActionRecordingVideoNote
        case .chatActionUploadingVideoNote:
            let value = try ChatActionUploadingVideoNote(from: decoder)
            self = .chatActionUploadingVideoNote(value)
        case .chatActionWatchingAnimations:
            let value = try ChatActionWatchingAnimations(from: decoder)
            self = .chatActionWatchingAnimations(value)
        case .chatActionCancel:
            self = .chatActionCancel
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatActionTyping:
            try container.encode(Kind.chatActionTyping, forKey: .type)
        case .chatActionRecordingVideo:
            try container.encode(Kind.chatActionRecordingVideo, forKey: .type)
        case .chatActionUploadingVideo(let value):
            try container.encode(Kind.chatActionUploadingVideo, forKey: .type)
            try value.encode(to: encoder)
        case .chatActionRecordingVoiceNote:
            try container.encode(Kind.chatActionRecordingVoiceNote, forKey: .type)
        case .chatActionUploadingVoiceNote(let value):
            try container.encode(Kind.chatActionUploadingVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        case .chatActionUploadingPhoto(let value):
            try container.encode(Kind.chatActionUploadingPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .chatActionUploadingDocument(let value):
            try container.encode(Kind.chatActionUploadingDocument, forKey: .type)
            try value.encode(to: encoder)
        case .chatActionChoosingSticker:
            try container.encode(Kind.chatActionChoosingSticker, forKey: .type)
        case .chatActionChoosingLocation:
            try container.encode(Kind.chatActionChoosingLocation, forKey: .type)
        case .chatActionChoosingContact:
            try container.encode(Kind.chatActionChoosingContact, forKey: .type)
        case .chatActionStartPlayingGame:
            try container.encode(Kind.chatActionStartPlayingGame, forKey: .type)
        case .chatActionRecordingVideoNote:
            try container.encode(Kind.chatActionRecordingVideoNote, forKey: .type)
        case .chatActionUploadingVideoNote(let value):
            try container.encode(Kind.chatActionUploadingVideoNote, forKey: .type)
            try value.encode(to: encoder)
        case .chatActionWatchingAnimations(let value):
            try container.encode(Kind.chatActionWatchingAnimations, forKey: .type)
            try value.encode(to: encoder)
        case .chatActionCancel:
            try container.encode(Kind.chatActionCancel, forKey: .type)
        }
    }
}

/// The user is uploading a video
public struct ChatActionUploadingVideo: Codable, Equatable, Hashable {

    /// Upload progress, as a percentage
    public let progress: Int


    public init(progress: Int) {
        self.progress = progress
    }
}

/// The user is uploading a voice note
public struct ChatActionUploadingVoiceNote: Codable, Equatable, Hashable {

    /// Upload progress, as a percentage
    public let progress: Int


    public init(progress: Int) {
        self.progress = progress
    }
}

/// The user is uploading a photo
public struct ChatActionUploadingPhoto: Codable, Equatable, Hashable {

    /// Upload progress, as a percentage
    public let progress: Int


    public init(progress: Int) {
        self.progress = progress
    }
}

/// The user is uploading a document
public struct ChatActionUploadingDocument: Codable, Equatable, Hashable {

    /// Upload progress, as a percentage
    public let progress: Int


    public init(progress: Int) {
        self.progress = progress
    }
}

/// The user is uploading a video note
public struct ChatActionUploadingVideoNote: Codable, Equatable, Hashable {

    /// Upload progress, as a percentage
    public let progress: Int


    public init(progress: Int) {
        self.progress = progress
    }
}

/// The user is watching animations sent by the other party by clicking on an animated emoji
public struct ChatActionWatchingAnimations: Codable, Equatable, Hashable {

    /// The animated emoji
    public let emoji: String


    public init(emoji: String) {
        self.emoji = emoji
    }
}

