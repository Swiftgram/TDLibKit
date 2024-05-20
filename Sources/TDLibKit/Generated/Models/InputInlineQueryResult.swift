//
//  InputInlineQueryResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a single result of an inline query; for bots only
public indirect enum InputInlineQueryResult: Codable, Equatable, Hashable {

    /// Represents a link to an animated GIF or an animated (i.e., without sound) H.264/MPEG-4 AVC video
    case inputInlineQueryResultAnimation(InputInlineQueryResultAnimation)

    /// Represents a link to an article or web page
    case inputInlineQueryResultArticle(InputInlineQueryResultArticle)

    /// Represents a link to an MP3 audio file
    case inputInlineQueryResultAudio(InputInlineQueryResultAudio)

    /// Represents a user contact
    case inputInlineQueryResultContact(InputInlineQueryResultContact)

    /// Represents a link to a file
    case inputInlineQueryResultDocument(InputInlineQueryResultDocument)

    /// Represents a game
    case inputInlineQueryResultGame(InputInlineQueryResultGame)

    /// Represents a point on the map
    case inputInlineQueryResultLocation(InputInlineQueryResultLocation)

    /// Represents link to a JPEG image
    case inputInlineQueryResultPhoto(InputInlineQueryResultPhoto)

    /// Represents a link to a WEBP, TGS, or WEBM sticker
    case inputInlineQueryResultSticker(InputInlineQueryResultSticker)

    /// Represents information about a venue
    case inputInlineQueryResultVenue(InputInlineQueryResultVenue)

    /// Represents a link to a page containing an embedded video player or a video file
    case inputInlineQueryResultVideo(InputInlineQueryResultVideo)

    /// Represents a link to an opus-encoded audio file within an OGG container, single channel audio
    case inputInlineQueryResultVoiceNote(InputInlineQueryResultVoiceNote)


    private enum Kind: String, Codable {
        case inputInlineQueryResultAnimation
        case inputInlineQueryResultArticle
        case inputInlineQueryResultAudio
        case inputInlineQueryResultContact
        case inputInlineQueryResultDocument
        case inputInlineQueryResultGame
        case inputInlineQueryResultLocation
        case inputInlineQueryResultPhoto
        case inputInlineQueryResultSticker
        case inputInlineQueryResultVenue
        case inputInlineQueryResultVideo
        case inputInlineQueryResultVoiceNote
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputInlineQueryResultAnimation:
            let value = try InputInlineQueryResultAnimation(from: decoder)
            self = .inputInlineQueryResultAnimation(value)
        case .inputInlineQueryResultArticle:
            let value = try InputInlineQueryResultArticle(from: decoder)
            self = .inputInlineQueryResultArticle(value)
        case .inputInlineQueryResultAudio:
            let value = try InputInlineQueryResultAudio(from: decoder)
            self = .inputInlineQueryResultAudio(value)
        case .inputInlineQueryResultContact:
            let value = try InputInlineQueryResultContact(from: decoder)
            self = .inputInlineQueryResultContact(value)
        case .inputInlineQueryResultDocument:
            let value = try InputInlineQueryResultDocument(from: decoder)
            self = .inputInlineQueryResultDocument(value)
        case .inputInlineQueryResultGame:
            let value = try InputInlineQueryResultGame(from: decoder)
            self = .inputInlineQueryResultGame(value)
        case .inputInlineQueryResultLocation:
            let value = try InputInlineQueryResultLocation(from: decoder)
            self = .inputInlineQueryResultLocation(value)
        case .inputInlineQueryResultPhoto:
            let value = try InputInlineQueryResultPhoto(from: decoder)
            self = .inputInlineQueryResultPhoto(value)
        case .inputInlineQueryResultSticker:
            let value = try InputInlineQueryResultSticker(from: decoder)
            self = .inputInlineQueryResultSticker(value)
        case .inputInlineQueryResultVenue:
            let value = try InputInlineQueryResultVenue(from: decoder)
            self = .inputInlineQueryResultVenue(value)
        case .inputInlineQueryResultVideo:
            let value = try InputInlineQueryResultVideo(from: decoder)
            self = .inputInlineQueryResultVideo(value)
        case .inputInlineQueryResultVoiceNote:
            let value = try InputInlineQueryResultVoiceNote(from: decoder)
            self = .inputInlineQueryResultVoiceNote(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputInlineQueryResultAnimation(let value):
            try container.encode(Kind.inputInlineQueryResultAnimation, forKey: .type)
            try value.encode(to: encoder)
        case .inputInlineQueryResultArticle(let value):
            try container.encode(Kind.inputInlineQueryResultArticle, forKey: .type)
            try value.encode(to: encoder)
        case .inputInlineQueryResultAudio(let value):
            try container.encode(Kind.inputInlineQueryResultAudio, forKey: .type)
            try value.encode(to: encoder)
        case .inputInlineQueryResultContact(let value):
            try container.encode(Kind.inputInlineQueryResultContact, forKey: .type)
            try value.encode(to: encoder)
        case .inputInlineQueryResultDocument(let value):
            try container.encode(Kind.inputInlineQueryResultDocument, forKey: .type)
            try value.encode(to: encoder)
        case .inputInlineQueryResultGame(let value):
            try container.encode(Kind.inputInlineQueryResultGame, forKey: .type)
            try value.encode(to: encoder)
        case .inputInlineQueryResultLocation(let value):
            try container.encode(Kind.inputInlineQueryResultLocation, forKey: .type)
            try value.encode(to: encoder)
        case .inputInlineQueryResultPhoto(let value):
            try container.encode(Kind.inputInlineQueryResultPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .inputInlineQueryResultSticker(let value):
            try container.encode(Kind.inputInlineQueryResultSticker, forKey: .type)
            try value.encode(to: encoder)
        case .inputInlineQueryResultVenue(let value):
            try container.encode(Kind.inputInlineQueryResultVenue, forKey: .type)
            try value.encode(to: encoder)
        case .inputInlineQueryResultVideo(let value):
            try container.encode(Kind.inputInlineQueryResultVideo, forKey: .type)
            try value.encode(to: encoder)
        case .inputInlineQueryResultVoiceNote(let value):
            try container.encode(Kind.inputInlineQueryResultVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Represents a link to an animated GIF or an animated (i.e., without sound) H.264/MPEG-4 AVC video
public struct InputInlineQueryResultAnimation: Codable, Equatable, Hashable, Identifiable {

    /// Unique identifier of the query result
    public let id: String

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
    public let inputMessageContent: InputMessageContent

    /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
    public let replyMarkup: ReplyMarkup?

    /// MIME type of the video thumbnail. If non-empty, must be one of "image/jpeg", "image/gif" and "video/mp4"
    public let thumbnailMimeType: String

    /// URL of the result thumbnail (JPEG, GIF, or MPEG4), if it exists
    public let thumbnailUrl: String

    /// Title of the query result
    public let title: String

    /// Duration of the video, in seconds
    public let videoDuration: Int

    /// Height of the video
    public let videoHeight: Int

    /// MIME type of the video file. Must be one of "image/gif" and "video/mp4"
    public let videoMimeType: String

    /// The URL of the video file (file size must not exceed 1MB)
    public let videoUrl: String

    /// Width of the video
    public let videoWidth: Int


    public init(
        id: String,
        inputMessageContent: InputMessageContent,
        replyMarkup: ReplyMarkup?,
        thumbnailMimeType: String,
        thumbnailUrl: String,
        title: String,
        videoDuration: Int,
        videoHeight: Int,
        videoMimeType: String,
        videoUrl: String,
        videoWidth: Int
    ) {
        self.id = id
        self.inputMessageContent = inputMessageContent
        self.replyMarkup = replyMarkup
        self.thumbnailMimeType = thumbnailMimeType
        self.thumbnailUrl = thumbnailUrl
        self.title = title
        self.videoDuration = videoDuration
        self.videoHeight = videoHeight
        self.videoMimeType = videoMimeType
        self.videoUrl = videoUrl
        self.videoWidth = videoWidth
    }
}

/// Represents a link to an article or web page
public struct InputInlineQueryResultArticle: Codable, Equatable, Hashable, Identifiable {

    public let description: String

    /// True, if the URL must be not shown
    public let hideUrl: Bool

    /// Unique identifier of the query result
    public let id: String

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
    public let inputMessageContent: InputMessageContent

    /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
    public let replyMarkup: ReplyMarkup?

    /// Thumbnail height, if known
    public let thumbnailHeight: Int

    /// URL of the result thumbnail, if it exists
    public let thumbnailUrl: String

    /// Thumbnail width, if known
    public let thumbnailWidth: Int

    /// Title of the result
    public let title: String

    /// URL of the result, if it exists
    public let url: String


    public init(
        description: String,
        hideUrl: Bool,
        id: String,
        inputMessageContent: InputMessageContent,
        replyMarkup: ReplyMarkup?,
        thumbnailHeight: Int,
        thumbnailUrl: String,
        thumbnailWidth: Int,
        title: String,
        url: String
    ) {
        self.description = description
        self.hideUrl = hideUrl
        self.id = id
        self.inputMessageContent = inputMessageContent
        self.replyMarkup = replyMarkup
        self.thumbnailHeight = thumbnailHeight
        self.thumbnailUrl = thumbnailUrl
        self.thumbnailWidth = thumbnailWidth
        self.title = title
        self.url = url
    }
}

/// Represents a link to an MP3 audio file
public struct InputInlineQueryResultAudio: Codable, Equatable, Hashable, Identifiable {

    /// Audio file duration, in seconds
    public let audioDuration: Int

    /// The URL of the audio file
    public let audioUrl: String

    /// Unique identifier of the query result
    public let id: String

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAudio, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
    public let inputMessageContent: InputMessageContent

    /// Performer of the audio file
    public let performer: String

    /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
    public let replyMarkup: ReplyMarkup?

    /// Title of the audio file
    public let title: String


    public init(
        audioDuration: Int,
        audioUrl: String,
        id: String,
        inputMessageContent: InputMessageContent,
        performer: String,
        replyMarkup: ReplyMarkup?,
        title: String
    ) {
        self.audioDuration = audioDuration
        self.audioUrl = audioUrl
        self.id = id
        self.inputMessageContent = inputMessageContent
        self.performer = performer
        self.replyMarkup = replyMarkup
        self.title = title
    }
}

/// Represents a user contact
public struct InputInlineQueryResultContact: Codable, Equatable, Hashable, Identifiable {

    /// User contact
    public let contact: Contact

    /// Unique identifier of the query result
    public let id: String

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
    public let inputMessageContent: InputMessageContent

    /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
    public let replyMarkup: ReplyMarkup?

    /// Thumbnail height, if known
    public let thumbnailHeight: Int

    /// URL of the result thumbnail, if it exists
    public let thumbnailUrl: String

    /// Thumbnail width, if known
    public let thumbnailWidth: Int


    public init(
        contact: Contact,
        id: String,
        inputMessageContent: InputMessageContent,
        replyMarkup: ReplyMarkup?,
        thumbnailHeight: Int,
        thumbnailUrl: String,
        thumbnailWidth: Int
    ) {
        self.contact = contact
        self.id = id
        self.inputMessageContent = inputMessageContent
        self.replyMarkup = replyMarkup
        self.thumbnailHeight = thumbnailHeight
        self.thumbnailUrl = thumbnailUrl
        self.thumbnailWidth = thumbnailWidth
    }
}

/// Represents a link to a file
public struct InputInlineQueryResultDocument: Codable, Equatable, Hashable, Identifiable {

    public let description: String

    /// URL of the file
    public let documentUrl: String

    /// Unique identifier of the query result
    public let id: String

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageDocument, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
    public let inputMessageContent: InputMessageContent

    /// MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed
    public let mimeType: String

    /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
    public let replyMarkup: ReplyMarkup?

    /// Height of the thumbnail
    public let thumbnailHeight: Int

    /// The URL of the file thumbnail, if it exists
    public let thumbnailUrl: String

    /// Width of the thumbnail
    public let thumbnailWidth: Int

    /// Title of the resulting file
    public let title: String


    public init(
        description: String,
        documentUrl: String,
        id: String,
        inputMessageContent: InputMessageContent,
        mimeType: String,
        replyMarkup: ReplyMarkup?,
        thumbnailHeight: Int,
        thumbnailUrl: String,
        thumbnailWidth: Int,
        title: String
    ) {
        self.description = description
        self.documentUrl = documentUrl
        self.id = id
        self.inputMessageContent = inputMessageContent
        self.mimeType = mimeType
        self.replyMarkup = replyMarkup
        self.thumbnailHeight = thumbnailHeight
        self.thumbnailUrl = thumbnailUrl
        self.thumbnailWidth = thumbnailWidth
        self.title = title
    }
}

/// Represents a game
public struct InputInlineQueryResultGame: Codable, Equatable, Hashable, Identifiable {

    /// Short name of the game
    public let gameShortName: String

    /// Unique identifier of the query result
    public let id: String

    /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
    public let replyMarkup: ReplyMarkup?


    public init(
        gameShortName: String,
        id: String,
        replyMarkup: ReplyMarkup?
    ) {
        self.gameShortName = gameShortName
        self.id = id
        self.replyMarkup = replyMarkup
    }
}

/// Represents a point on the map
public struct InputInlineQueryResultLocation: Codable, Equatable, Hashable, Identifiable {

    /// Unique identifier of the query result
    public let id: String

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
    public let inputMessageContent: InputMessageContent

    /// Amount of time relative to the message sent time until the location can be updated, in seconds
    public let livePeriod: Int

    /// Location result
    public let location: Location

    /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
    public let replyMarkup: ReplyMarkup?

    /// Thumbnail height, if known
    public let thumbnailHeight: Int

    /// URL of the result thumbnail, if it exists
    public let thumbnailUrl: String

    /// Thumbnail width, if known
    public let thumbnailWidth: Int

    /// Title of the result
    public let title: String


    public init(
        id: String,
        inputMessageContent: InputMessageContent,
        livePeriod: Int,
        location: Location,
        replyMarkup: ReplyMarkup?,
        thumbnailHeight: Int,
        thumbnailUrl: String,
        thumbnailWidth: Int,
        title: String
    ) {
        self.id = id
        self.inputMessageContent = inputMessageContent
        self.livePeriod = livePeriod
        self.location = location
        self.replyMarkup = replyMarkup
        self.thumbnailHeight = thumbnailHeight
        self.thumbnailUrl = thumbnailUrl
        self.thumbnailWidth = thumbnailWidth
        self.title = title
    }
}

/// Represents link to a JPEG image
public struct InputInlineQueryResultPhoto: Codable, Equatable, Hashable, Identifiable {

    public let description: String

    /// Unique identifier of the query result
    public let id: String

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessagePhoto, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
    public let inputMessageContent: InputMessageContent

    /// Height of the photo
    public let photoHeight: Int

    /// The URL of the JPEG photo (photo size must not exceed 5MB)
    public let photoUrl: String

    /// Width of the photo
    public let photoWidth: Int

    /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
    public let replyMarkup: ReplyMarkup?

    /// URL of the photo thumbnail, if it exists
    public let thumbnailUrl: String

    /// Title of the result, if known
    public let title: String


    public init(
        description: String,
        id: String,
        inputMessageContent: InputMessageContent,
        photoHeight: Int,
        photoUrl: String,
        photoWidth: Int,
        replyMarkup: ReplyMarkup?,
        thumbnailUrl: String,
        title: String
    ) {
        self.description = description
        self.id = id
        self.inputMessageContent = inputMessageContent
        self.photoHeight = photoHeight
        self.photoUrl = photoUrl
        self.photoWidth = photoWidth
        self.replyMarkup = replyMarkup
        self.thumbnailUrl = thumbnailUrl
        self.title = title
    }
}

/// Represents a link to a WEBP, TGS, or WEBM sticker
public struct InputInlineQueryResultSticker: Codable, Equatable, Hashable, Identifiable {

    /// Unique identifier of the query result
    public let id: String

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageSticker, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
    public let inputMessageContent: InputMessageContent

    /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
    public let replyMarkup: ReplyMarkup?

    /// Height of the sticker
    public let stickerHeight: Int

    /// The URL of the WEBP, TGS, or WEBM sticker (sticker file size must not exceed 5MB)
    public let stickerUrl: String

    /// Width of the sticker
    public let stickerWidth: Int

    /// URL of the sticker thumbnail, if it exists
    public let thumbnailUrl: String


    public init(
        id: String,
        inputMessageContent: InputMessageContent,
        replyMarkup: ReplyMarkup?,
        stickerHeight: Int,
        stickerUrl: String,
        stickerWidth: Int,
        thumbnailUrl: String
    ) {
        self.id = id
        self.inputMessageContent = inputMessageContent
        self.replyMarkup = replyMarkup
        self.stickerHeight = stickerHeight
        self.stickerUrl = stickerUrl
        self.stickerWidth = stickerWidth
        self.thumbnailUrl = thumbnailUrl
    }
}

/// Represents information about a venue
public struct InputInlineQueryResultVenue: Codable, Equatable, Hashable, Identifiable {

    /// Unique identifier of the query result
    public let id: String

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
    public let inputMessageContent: InputMessageContent

    /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
    public let replyMarkup: ReplyMarkup?

    /// Thumbnail height, if known
    public let thumbnailHeight: Int

    /// URL of the result thumbnail, if it exists
    public let thumbnailUrl: String

    /// Thumbnail width, if known
    public let thumbnailWidth: Int

    /// Venue result
    public let venue: Venue


    public init(
        id: String,
        inputMessageContent: InputMessageContent,
        replyMarkup: ReplyMarkup?,
        thumbnailHeight: Int,
        thumbnailUrl: String,
        thumbnailWidth: Int,
        venue: Venue
    ) {
        self.id = id
        self.inputMessageContent = inputMessageContent
        self.replyMarkup = replyMarkup
        self.thumbnailHeight = thumbnailHeight
        self.thumbnailUrl = thumbnailUrl
        self.thumbnailWidth = thumbnailWidth
        self.venue = venue
    }
}

/// Represents a link to a page containing an embedded video player or a video file
public struct InputInlineQueryResultVideo: Codable, Equatable, Hashable, Identifiable {

    public let description: String

    /// Unique identifier of the query result
    public let id: String

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVideo, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
    public let inputMessageContent: InputMessageContent

    /// MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently supported
    public let mimeType: String

    /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
    public let replyMarkup: ReplyMarkup?

    /// The URL of the video thumbnail (JPEG), if it exists
    public let thumbnailUrl: String

    /// Title of the result
    public let title: String

    /// Video duration, in seconds
    public let videoDuration: Int

    /// Height of the video
    public let videoHeight: Int

    /// URL of the embedded video player or video file
    public let videoUrl: String

    /// Width of the video
    public let videoWidth: Int


    public init(
        description: String,
        id: String,
        inputMessageContent: InputMessageContent,
        mimeType: String,
        replyMarkup: ReplyMarkup?,
        thumbnailUrl: String,
        title: String,
        videoDuration: Int,
        videoHeight: Int,
        videoUrl: String,
        videoWidth: Int
    ) {
        self.description = description
        self.id = id
        self.inputMessageContent = inputMessageContent
        self.mimeType = mimeType
        self.replyMarkup = replyMarkup
        self.thumbnailUrl = thumbnailUrl
        self.title = title
        self.videoDuration = videoDuration
        self.videoHeight = videoHeight
        self.videoUrl = videoUrl
        self.videoWidth = videoWidth
    }
}

/// Represents a link to an opus-encoded audio file within an OGG container, single channel audio
public struct InputInlineQueryResultVoiceNote: Codable, Equatable, Hashable, Identifiable {

    /// Unique identifier of the query result
    public let id: String

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVoiceNote, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
    public let inputMessageContent: InputMessageContent

    /// The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
    public let replyMarkup: ReplyMarkup?

    /// Title of the voice note
    public let title: String

    /// Duration of the voice note, in seconds
    public let voiceNoteDuration: Int

    /// The URL of the voice note file
    public let voiceNoteUrl: String


    public init(
        id: String,
        inputMessageContent: InputMessageContent,
        replyMarkup: ReplyMarkup?,
        title: String,
        voiceNoteDuration: Int,
        voiceNoteUrl: String
    ) {
        self.id = id
        self.inputMessageContent = inputMessageContent
        self.replyMarkup = replyMarkup
        self.title = title
        self.voiceNoteDuration = voiceNoteDuration
        self.voiceNoteUrl = voiceNoteUrl
    }
}

