//
//  InputMessageContent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-66234ae2
//  https://github.com/tdlib/td/tree/66234ae2
//

import Foundation


/// The content of a message to send
public indirect enum InputMessageContent: Codable, Equatable, Hashable {

    /// A text message
    case inputMessageText(InputMessageText)

    /// An animation message (GIF-style).
    case inputMessageAnimation(InputMessageAnimation)

    /// An audio message
    case inputMessageAudio(InputMessageAudio)

    /// A document message (general file)
    case inputMessageDocument(InputMessageDocument)

    /// A photo message
    case inputMessagePhoto(InputMessagePhoto)

    /// A sticker message
    case inputMessageSticker(InputMessageSticker)

    /// A video message
    case inputMessageVideo(InputMessageVideo)

    /// A video note message
    case inputMessageVideoNote(InputMessageVideoNote)

    /// A voice note message
    case inputMessageVoiceNote(InputMessageVoiceNote)

    /// A message with a location
    case inputMessageLocation(InputMessageLocation)

    /// A message with information about a venue
    case inputMessageVenue(InputMessageVenue)

    /// A message containing a user contact
    case inputMessageContact(InputMessageContact)

    /// A dice message
    case inputMessageDice(InputMessageDice)

    /// A message with a game; not supported for channels or secret chats
    case inputMessageGame(InputMessageGame)

    /// A message with an invoice; can be used only by bots
    case inputMessageInvoice(InputMessageInvoice)

    /// A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot
    case inputMessagePoll(InputMessagePoll)

    /// A forwarded message
    case inputMessageForwarded(InputMessageForwarded)


    private enum Kind: String, Codable {
        case inputMessageText
        case inputMessageAnimation
        case inputMessageAudio
        case inputMessageDocument
        case inputMessagePhoto
        case inputMessageSticker
        case inputMessageVideo
        case inputMessageVideoNote
        case inputMessageVoiceNote
        case inputMessageLocation
        case inputMessageVenue
        case inputMessageContact
        case inputMessageDice
        case inputMessageGame
        case inputMessageInvoice
        case inputMessagePoll
        case inputMessageForwarded
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputMessageText:
            let value = try InputMessageText(from: decoder)
            self = .inputMessageText(value)
        case .inputMessageAnimation:
            let value = try InputMessageAnimation(from: decoder)
            self = .inputMessageAnimation(value)
        case .inputMessageAudio:
            let value = try InputMessageAudio(from: decoder)
            self = .inputMessageAudio(value)
        case .inputMessageDocument:
            let value = try InputMessageDocument(from: decoder)
            self = .inputMessageDocument(value)
        case .inputMessagePhoto:
            let value = try InputMessagePhoto(from: decoder)
            self = .inputMessagePhoto(value)
        case .inputMessageSticker:
            let value = try InputMessageSticker(from: decoder)
            self = .inputMessageSticker(value)
        case .inputMessageVideo:
            let value = try InputMessageVideo(from: decoder)
            self = .inputMessageVideo(value)
        case .inputMessageVideoNote:
            let value = try InputMessageVideoNote(from: decoder)
            self = .inputMessageVideoNote(value)
        case .inputMessageVoiceNote:
            let value = try InputMessageVoiceNote(from: decoder)
            self = .inputMessageVoiceNote(value)
        case .inputMessageLocation:
            let value = try InputMessageLocation(from: decoder)
            self = .inputMessageLocation(value)
        case .inputMessageVenue:
            let value = try InputMessageVenue(from: decoder)
            self = .inputMessageVenue(value)
        case .inputMessageContact:
            let value = try InputMessageContact(from: decoder)
            self = .inputMessageContact(value)
        case .inputMessageDice:
            let value = try InputMessageDice(from: decoder)
            self = .inputMessageDice(value)
        case .inputMessageGame:
            let value = try InputMessageGame(from: decoder)
            self = .inputMessageGame(value)
        case .inputMessageInvoice:
            let value = try InputMessageInvoice(from: decoder)
            self = .inputMessageInvoice(value)
        case .inputMessagePoll:
            let value = try InputMessagePoll(from: decoder)
            self = .inputMessagePoll(value)
        case .inputMessageForwarded:
            let value = try InputMessageForwarded(from: decoder)
            self = .inputMessageForwarded(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputMessageText(let value):
            try container.encode(Kind.inputMessageText, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageAnimation(let value):
            try container.encode(Kind.inputMessageAnimation, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageAudio(let value):
            try container.encode(Kind.inputMessageAudio, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageDocument(let value):
            try container.encode(Kind.inputMessageDocument, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessagePhoto(let value):
            try container.encode(Kind.inputMessagePhoto, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageSticker(let value):
            try container.encode(Kind.inputMessageSticker, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageVideo(let value):
            try container.encode(Kind.inputMessageVideo, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageVideoNote(let value):
            try container.encode(Kind.inputMessageVideoNote, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageVoiceNote(let value):
            try container.encode(Kind.inputMessageVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageLocation(let value):
            try container.encode(Kind.inputMessageLocation, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageVenue(let value):
            try container.encode(Kind.inputMessageVenue, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageContact(let value):
            try container.encode(Kind.inputMessageContact, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageDice(let value):
            try container.encode(Kind.inputMessageDice, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageGame(let value):
            try container.encode(Kind.inputMessageGame, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageInvoice(let value):
            try container.encode(Kind.inputMessageInvoice, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessagePoll(let value):
            try container.encode(Kind.inputMessagePoll, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageForwarded(let value):
            try container.encode(Kind.inputMessageForwarded, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A text message
public struct InputMessageText: Codable, Equatable, Hashable {

    /// True, if a chat message draft must be deleted
    public let clearDraft: Bool

    /// True, if rich web page previews for URLs in the message text must be disabled
    public let disableWebPagePreview: Bool

    /// Formatted text to be sent; 1-getOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually
    public let text: FormattedText


    public init(
        clearDraft: Bool,
        disableWebPagePreview: Bool,
        text: FormattedText
    ) {
        self.clearDraft = clearDraft
        self.disableWebPagePreview = disableWebPagePreview
        self.text = text
    }
}

/// An animation message (GIF-style).
public struct InputMessageAnimation: Codable, Equatable, Hashable {

    /// File identifiers of the stickers added to the animation, if applicable
    public let addedStickerFileIds: [Int]

    /// Animation file to be sent
    public let animation: InputFile

    /// Animation caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
    public let caption: FormattedText?

    /// Duration of the animation, in seconds
    public let duration: Int

    /// True, if the animation preview must be covered by a spoiler animation; not supported in secret chats
    public let hasSpoiler: Bool

    /// Height of the animation; may be replaced by the server
    public let height: Int

    /// Animation thumbnail; pass null to skip thumbnail uploading
    public let thumbnail: InputThumbnail?

    /// Width of the animation; may be replaced by the server
    public let width: Int


    public init(
        addedStickerFileIds: [Int],
        animation: InputFile,
        caption: FormattedText?,
        duration: Int,
        hasSpoiler: Bool,
        height: Int,
        thumbnail: InputThumbnail?,
        width: Int
    ) {
        self.addedStickerFileIds = addedStickerFileIds
        self.animation = animation
        self.caption = caption
        self.duration = duration
        self.hasSpoiler = hasSpoiler
        self.height = height
        self.thumbnail = thumbnail
        self.width = width
    }
}

/// An audio message
public struct InputMessageAudio: Codable, Equatable, Hashable {

    /// Thumbnail of the cover for the album; pass null to skip thumbnail uploading
    public let albumCoverThumbnail: InputThumbnail?

    /// Audio file to be sent
    public let audio: InputFile

    /// Audio caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
    public let caption: FormattedText?

    /// Duration of the audio, in seconds; may be replaced by the server
    public let duration: Int

    /// Performer of the audio; 0-64 characters, may be replaced by the server
    public let performer: String

    /// Title of the audio; 0-64 characters; may be replaced by the server
    public let title: String


    public init(
        albumCoverThumbnail: InputThumbnail?,
        audio: InputFile,
        caption: FormattedText?,
        duration: Int,
        performer: String,
        title: String
    ) {
        self.albumCoverThumbnail = albumCoverThumbnail
        self.audio = audio
        self.caption = caption
        self.duration = duration
        self.performer = performer
        self.title = title
    }
}

/// A document message (general file)
public struct InputMessageDocument: Codable, Equatable, Hashable {

    /// Document caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
    public let caption: FormattedText?

    /// If true, automatic file type detection will be disabled and the document will always be sent as file. Always true for files sent to secret chats
    public let disableContentTypeDetection: Bool

    /// Document to be sent
    public let document: InputFile

    /// Document thumbnail; pass null to skip thumbnail uploading
    public let thumbnail: InputThumbnail?


    public init(
        caption: FormattedText?,
        disableContentTypeDetection: Bool,
        document: InputFile,
        thumbnail: InputThumbnail?
    ) {
        self.caption = caption
        self.disableContentTypeDetection = disableContentTypeDetection
        self.document = document
        self.thumbnail = thumbnail
    }
}

/// A photo message
public struct InputMessagePhoto: Codable, Equatable, Hashable {

    /// File identifiers of the stickers added to the photo, if applicable
    public let addedStickerFileIds: [Int]

    /// Photo caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
    public let caption: FormattedText?

    /// True, if the photo preview must be covered by a spoiler animation; not supported in secret chats
    public let hasSpoiler: Bool

    /// Photo height
    public let height: Int

    /// Photo to send. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20
    public let photo: InputFile

    /// Photo self-destruct time, in seconds (0-60). A non-zero self-destruct time can be specified only in private chats
    public let selfDestructTime: Int

    /// Photo thumbnail to be sent; pass null to skip thumbnail uploading. The thumbnail is sent to the other party only in secret chats
    public let thumbnail: InputThumbnail?

    /// Photo width
    public let width: Int


    public init(
        addedStickerFileIds: [Int],
        caption: FormattedText?,
        hasSpoiler: Bool,
        height: Int,
        photo: InputFile,
        selfDestructTime: Int,
        thumbnail: InputThumbnail?,
        width: Int
    ) {
        self.addedStickerFileIds = addedStickerFileIds
        self.caption = caption
        self.hasSpoiler = hasSpoiler
        self.height = height
        self.photo = photo
        self.selfDestructTime = selfDestructTime
        self.thumbnail = thumbnail
        self.width = width
    }
}

/// A sticker message
public struct InputMessageSticker: Codable, Equatable, Hashable {

    /// Emoji used to choose the sticker
    public let emoji: String

    /// Sticker height
    public let height: Int

    /// Sticker to be sent
    public let sticker: InputFile

    /// Sticker thumbnail; pass null to skip thumbnail uploading
    public let thumbnail: InputThumbnail?

    /// Sticker width
    public let width: Int


    public init(
        emoji: String,
        height: Int,
        sticker: InputFile,
        thumbnail: InputThumbnail?,
        width: Int
    ) {
        self.emoji = emoji
        self.height = height
        self.sticker = sticker
        self.thumbnail = thumbnail
        self.width = width
    }
}

/// A video message
public struct InputMessageVideo: Codable, Equatable, Hashable {

    /// File identifiers of the stickers added to the video, if applicable
    public let addedStickerFileIds: [Int]

    /// Video caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
    public let caption: FormattedText?

    /// Duration of the video, in seconds
    public let duration: Int

    /// True, if the video preview must be covered by a spoiler animation; not supported in secret chats
    public let hasSpoiler: Bool

    /// Video height
    public let height: Int

    /// Video self-destruct time, in seconds (0-60). A non-zero self-destruct time can be specified only in private chats
    public let selfDestructTime: Int

    /// True, if the video is supposed to be streamed
    public let supportsStreaming: Bool

    /// Video thumbnail; pass null to skip thumbnail uploading
    public let thumbnail: InputThumbnail?

    /// Video to be sent
    public let video: InputFile

    /// Video width
    public let width: Int


    public init(
        addedStickerFileIds: [Int],
        caption: FormattedText?,
        duration: Int,
        hasSpoiler: Bool,
        height: Int,
        selfDestructTime: Int,
        supportsStreaming: Bool,
        thumbnail: InputThumbnail?,
        video: InputFile,
        width: Int
    ) {
        self.addedStickerFileIds = addedStickerFileIds
        self.caption = caption
        self.duration = duration
        self.hasSpoiler = hasSpoiler
        self.height = height
        self.selfDestructTime = selfDestructTime
        self.supportsStreaming = supportsStreaming
        self.thumbnail = thumbnail
        self.video = video
        self.width = width
    }
}

/// A video note message
public struct InputMessageVideoNote: Codable, Equatable, Hashable {

    /// Duration of the video, in seconds
    public let duration: Int

    /// Video width and height; must be positive and not greater than 640
    public let length: Int

    /// Video thumbnail; pass null to skip thumbnail uploading
    public let thumbnail: InputThumbnail?

    /// Video note to be sent
    public let videoNote: InputFile


    public init(
        duration: Int,
        length: Int,
        thumbnail: InputThumbnail?,
        videoNote: InputFile
    ) {
        self.duration = duration
        self.length = length
        self.thumbnail = thumbnail
        self.videoNote = videoNote
    }
}

/// A voice note message
public struct InputMessageVoiceNote: Codable, Equatable, Hashable {

    /// Voice note caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
    public let caption: FormattedText?

    /// Duration of the voice note, in seconds
    public let duration: Int

    /// Voice note to be sent
    public let voiceNote: InputFile

    /// Waveform representation of the voice note in 5-bit format
    public let waveform: Data


    public init(
        caption: FormattedText?,
        duration: Int,
        voiceNote: InputFile,
        waveform: Data
    ) {
        self.caption = caption
        self.duration = duration
        self.voiceNote = voiceNote
        self.waveform = waveform
    }
}

/// A message with a location
public struct InputMessageLocation: Codable, Equatable, Hashable {

    /// For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
    public let heading: Int

    /// Period for which the location can be updated, in seconds; must be between 60 and 86400 for a live location and 0 otherwise
    public let livePeriod: Int

    /// Location to be sent
    public let location: Location

    /// For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages
    public let proximityAlertRadius: Int


    public init(
        heading: Int,
        livePeriod: Int,
        location: Location,
        proximityAlertRadius: Int
    ) {
        self.heading = heading
        self.livePeriod = livePeriod
        self.location = location
        self.proximityAlertRadius = proximityAlertRadius
    }
}

/// A message with information about a venue
public struct InputMessageVenue: Codable, Equatable, Hashable {

    /// Venue to send
    public let venue: Venue


    public init(venue: Venue) {
        self.venue = venue
    }
}

/// A message containing a user contact
public struct InputMessageContact: Codable, Equatable, Hashable {

    /// Contact to send
    public let contact: Contact


    public init(contact: Contact) {
        self.contact = contact
    }
}

/// A dice message
public struct InputMessageDice: Codable, Equatable, Hashable {

    /// True, if the chat message draft must be deleted
    public let clearDraft: Bool

    /// Emoji on which the dice throw animation is based
    public let emoji: String


    public init(
        clearDraft: Bool,
        emoji: String
    ) {
        self.clearDraft = clearDraft
        self.emoji = emoji
    }
}

/// A message with a game; not supported for channels or secret chats
public struct InputMessageGame: Codable, Equatable, Hashable {

    /// User identifier of the bot that owns the game
    public let botUserId: Int64

    /// Short name of the game
    public let gameShortName: String


    public init(
        botUserId: Int64,
        gameShortName: String
    ) {
        self.botUserId = botUserId
        self.gameShortName = gameShortName
    }
}

/// A message with an invoice; can be used only by bots
public struct InputMessageInvoice: Codable, Equatable, Hashable {

    public let description: String

    /// The content of extended media attached to the invoice. The content of the message to be sent. Must be one of the following types: inputMessagePhoto, inputMessageVideo
    public let extendedMediaContent: InputMessageContent

    /// Invoice
    public let invoice: Invoice

    /// The invoice payload
    public let payload: Data

    /// Product photo height
    public let photoHeight: Int

    /// Product photo size
    public let photoSize: Int

    /// Product photo URL; optional
    public let photoUrl: String

    /// Product photo width
    public let photoWidth: Int

    /// JSON-encoded data about the invoice, which will be shared with the payment provider
    public let providerData: String

    /// Payment provider token
    public let providerToken: String

    /// Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message
    public let startParameter: String

    /// Product title; 1-32 characters
    public let title: String


    public init(
        description: String,
        extendedMediaContent: InputMessageContent,
        invoice: Invoice,
        payload: Data,
        photoHeight: Int,
        photoSize: Int,
        photoUrl: String,
        photoWidth: Int,
        providerData: String,
        providerToken: String,
        startParameter: String,
        title: String
    ) {
        self.description = description
        self.extendedMediaContent = extendedMediaContent
        self.invoice = invoice
        self.payload = payload
        self.photoHeight = photoHeight
        self.photoSize = photoSize
        self.photoUrl = photoUrl
        self.photoWidth = photoWidth
        self.providerData = providerData
        self.providerToken = providerToken
        self.startParameter = startParameter
        self.title = title
    }
}

/// A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot
public struct InputMessagePoll: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the poll will automatically be closed; for bots only
    public let closeDate: Int

    /// True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels
    public let isAnonymous: Bool

    /// True, if the poll needs to be sent already closed; for bots only
    public let isClosed: Bool

    /// Amount of time the poll will be active after creation, in seconds; for bots only
    public let openPeriod: Int

    /// List of poll answer options, 2-10 strings 1-100 characters each
    public let options: [String]

    /// Poll question; 1-255 characters (up to 300 characters for bots)
    public let question: String

    /// Type of the poll
    public let type: PollType


    public init(
        closeDate: Int,
        isAnonymous: Bool,
        isClosed: Bool,
        openPeriod: Int,
        options: [String],
        question: String,
        type: PollType
    ) {
        self.closeDate = closeDate
        self.isAnonymous = isAnonymous
        self.isClosed = isClosed
        self.openPeriod = openPeriod
        self.options = options
        self.question = question
        self.type = type
    }
}

/// A forwarded message
public struct InputMessageForwarded: Codable, Equatable, Hashable {

    /// Options to be used to copy content of the message without reference to the original sender; pass null to forward the message as usual
    public let copyOptions: MessageCopyOptions?

    /// Identifier for the chat this forwarded message came from
    public let fromChatId: Int64

    /// True, if a game message is being shared from a launched game; applies only to game messages
    public let inGameShare: Bool

    /// Identifier of the message to forward
    public let messageId: Int64


    public init(
        copyOptions: MessageCopyOptions?,
        fromChatId: Int64,
        inGameShare: Bool,
        messageId: Int64
    ) {
        self.copyOptions = copyOptions
        self.fromChatId = fromChatId
        self.inGameShare = inGameShare
        self.messageId = messageId
    }
}

