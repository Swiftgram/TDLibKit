//
//  LinkPreviewType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Describes type of link preview
public indirect enum LinkPreviewType: Codable, Equatable, Hashable {

    /// The link is a link to a media album consisting of photos and videos
    case linkPreviewTypeAlbum(LinkPreviewTypeAlbum)

    /// The link is a link to an animation
    case linkPreviewTypeAnimation(LinkPreviewTypeAnimation)

    /// The link is a link to an app at App Store or Google Play
    case linkPreviewTypeApp(LinkPreviewTypeApp)

    /// The link is a link to a web site
    case linkPreviewTypeArticle(LinkPreviewTypeArticle)

    /// The link is a link to an audio
    case linkPreviewTypeAudio(LinkPreviewTypeAudio)

    /// The link is a link to a background. Link preview title and description are available only for filled backgrounds
    case linkPreviewTypeBackground(LinkPreviewTypeBackground)

    /// The link is a link to boost a channel chat
    case linkPreviewTypeChannelBoost(LinkPreviewTypeChannelBoost)

    /// The link is a link to a chat
    case linkPreviewTypeChat(LinkPreviewTypeChat)

    /// The link is a link to a general file
    case linkPreviewTypeDocument(LinkPreviewTypeDocument)

    /// The link is a link to an animation player
    case linkPreviewTypeEmbeddedAnimationPlayer(LinkPreviewTypeEmbeddedAnimationPlayer)

    /// The link is a link to an audio player
    case linkPreviewTypeEmbeddedAudioPlayer(LinkPreviewTypeEmbeddedAudioPlayer)

    /// The link is a link to a video player
    case linkPreviewTypeEmbeddedVideoPlayer(LinkPreviewTypeEmbeddedVideoPlayer)

    /// The link is a link to an audio file
    case linkPreviewTypeExternalAudio(LinkPreviewTypeExternalAudio)

    /// The link is a link to a video file
    case linkPreviewTypeExternalVideo(LinkPreviewTypeExternalVideo)

    /// The link is a link to an invoice
    case linkPreviewTypeInvoice

    /// The link is a link to a text or a poll Telegram message
    case linkPreviewTypeMessage

    /// The link is a link to a photo
    case linkPreviewTypePhoto(LinkPreviewTypePhoto)

    /// The link is a link to a Telegram Premium gift code
    case linkPreviewTypePremiumGiftCode

    /// The link is a link to a shareable chat folder
    case linkPreviewTypeShareableChatFolder

    /// The link is a link to a sticker
    case linkPreviewTypeSticker(LinkPreviewTypeSticker)

    /// The link is a link to a sticker set
    case linkPreviewTypeStickerSet(LinkPreviewTypeStickerSet)

    /// The link is a link to a story. Link preview description is unavailable
    case linkPreviewTypeStory(LinkPreviewTypeStory)

    /// The link is a link to boost a supergroup chat
    case linkPreviewTypeSupergroupBoost(LinkPreviewTypeSupergroupBoost)

    /// The link is a link to a cloud theme. TDLib has no theme support yet
    case linkPreviewTypeTheme(LinkPreviewTypeTheme)

    /// The link preview type is unsupported yet
    case linkPreviewTypeUnsupported

    /// The link is a link to a user
    case linkPreviewTypeUser(LinkPreviewTypeUser)

    /// The link is a link to a video
    case linkPreviewTypeVideo(LinkPreviewTypeVideo)

    /// The link is a link to a video chat
    case linkPreviewTypeVideoChat(LinkPreviewTypeVideoChat)

    /// The link is a link to a video note message
    case linkPreviewTypeVideoNote(LinkPreviewTypeVideoNote)

    /// The link is a link to a voice note message
    case linkPreviewTypeVoiceNote(LinkPreviewTypeVoiceNote)

    /// The link is a link to a Web App
    case linkPreviewTypeWebApp(LinkPreviewTypeWebApp)


    private enum Kind: String, Codable {
        case linkPreviewTypeAlbum
        case linkPreviewTypeAnimation
        case linkPreviewTypeApp
        case linkPreviewTypeArticle
        case linkPreviewTypeAudio
        case linkPreviewTypeBackground
        case linkPreviewTypeChannelBoost
        case linkPreviewTypeChat
        case linkPreviewTypeDocument
        case linkPreviewTypeEmbeddedAnimationPlayer
        case linkPreviewTypeEmbeddedAudioPlayer
        case linkPreviewTypeEmbeddedVideoPlayer
        case linkPreviewTypeExternalAudio
        case linkPreviewTypeExternalVideo
        case linkPreviewTypeInvoice
        case linkPreviewTypeMessage
        case linkPreviewTypePhoto
        case linkPreviewTypePremiumGiftCode
        case linkPreviewTypeShareableChatFolder
        case linkPreviewTypeSticker
        case linkPreviewTypeStickerSet
        case linkPreviewTypeStory
        case linkPreviewTypeSupergroupBoost
        case linkPreviewTypeTheme
        case linkPreviewTypeUnsupported
        case linkPreviewTypeUser
        case linkPreviewTypeVideo
        case linkPreviewTypeVideoChat
        case linkPreviewTypeVideoNote
        case linkPreviewTypeVoiceNote
        case linkPreviewTypeWebApp
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .linkPreviewTypeAlbum:
            let value = try LinkPreviewTypeAlbum(from: decoder)
            self = .linkPreviewTypeAlbum(value)
        case .linkPreviewTypeAnimation:
            let value = try LinkPreviewTypeAnimation(from: decoder)
            self = .linkPreviewTypeAnimation(value)
        case .linkPreviewTypeApp:
            let value = try LinkPreviewTypeApp(from: decoder)
            self = .linkPreviewTypeApp(value)
        case .linkPreviewTypeArticle:
            let value = try LinkPreviewTypeArticle(from: decoder)
            self = .linkPreviewTypeArticle(value)
        case .linkPreviewTypeAudio:
            let value = try LinkPreviewTypeAudio(from: decoder)
            self = .linkPreviewTypeAudio(value)
        case .linkPreviewTypeBackground:
            let value = try LinkPreviewTypeBackground(from: decoder)
            self = .linkPreviewTypeBackground(value)
        case .linkPreviewTypeChannelBoost:
            let value = try LinkPreviewTypeChannelBoost(from: decoder)
            self = .linkPreviewTypeChannelBoost(value)
        case .linkPreviewTypeChat:
            let value = try LinkPreviewTypeChat(from: decoder)
            self = .linkPreviewTypeChat(value)
        case .linkPreviewTypeDocument:
            let value = try LinkPreviewTypeDocument(from: decoder)
            self = .linkPreviewTypeDocument(value)
        case .linkPreviewTypeEmbeddedAnimationPlayer:
            let value = try LinkPreviewTypeEmbeddedAnimationPlayer(from: decoder)
            self = .linkPreviewTypeEmbeddedAnimationPlayer(value)
        case .linkPreviewTypeEmbeddedAudioPlayer:
            let value = try LinkPreviewTypeEmbeddedAudioPlayer(from: decoder)
            self = .linkPreviewTypeEmbeddedAudioPlayer(value)
        case .linkPreviewTypeEmbeddedVideoPlayer:
            let value = try LinkPreviewTypeEmbeddedVideoPlayer(from: decoder)
            self = .linkPreviewTypeEmbeddedVideoPlayer(value)
        case .linkPreviewTypeExternalAudio:
            let value = try LinkPreviewTypeExternalAudio(from: decoder)
            self = .linkPreviewTypeExternalAudio(value)
        case .linkPreviewTypeExternalVideo:
            let value = try LinkPreviewTypeExternalVideo(from: decoder)
            self = .linkPreviewTypeExternalVideo(value)
        case .linkPreviewTypeInvoice:
            self = .linkPreviewTypeInvoice
        case .linkPreviewTypeMessage:
            self = .linkPreviewTypeMessage
        case .linkPreviewTypePhoto:
            let value = try LinkPreviewTypePhoto(from: decoder)
            self = .linkPreviewTypePhoto(value)
        case .linkPreviewTypePremiumGiftCode:
            self = .linkPreviewTypePremiumGiftCode
        case .linkPreviewTypeShareableChatFolder:
            self = .linkPreviewTypeShareableChatFolder
        case .linkPreviewTypeSticker:
            let value = try LinkPreviewTypeSticker(from: decoder)
            self = .linkPreviewTypeSticker(value)
        case .linkPreviewTypeStickerSet:
            let value = try LinkPreviewTypeStickerSet(from: decoder)
            self = .linkPreviewTypeStickerSet(value)
        case .linkPreviewTypeStory:
            let value = try LinkPreviewTypeStory(from: decoder)
            self = .linkPreviewTypeStory(value)
        case .linkPreviewTypeSupergroupBoost:
            let value = try LinkPreviewTypeSupergroupBoost(from: decoder)
            self = .linkPreviewTypeSupergroupBoost(value)
        case .linkPreviewTypeTheme:
            let value = try LinkPreviewTypeTheme(from: decoder)
            self = .linkPreviewTypeTheme(value)
        case .linkPreviewTypeUnsupported:
            self = .linkPreviewTypeUnsupported
        case .linkPreviewTypeUser:
            let value = try LinkPreviewTypeUser(from: decoder)
            self = .linkPreviewTypeUser(value)
        case .linkPreviewTypeVideo:
            let value = try LinkPreviewTypeVideo(from: decoder)
            self = .linkPreviewTypeVideo(value)
        case .linkPreviewTypeVideoChat:
            let value = try LinkPreviewTypeVideoChat(from: decoder)
            self = .linkPreviewTypeVideoChat(value)
        case .linkPreviewTypeVideoNote:
            let value = try LinkPreviewTypeVideoNote(from: decoder)
            self = .linkPreviewTypeVideoNote(value)
        case .linkPreviewTypeVoiceNote:
            let value = try LinkPreviewTypeVoiceNote(from: decoder)
            self = .linkPreviewTypeVoiceNote(value)
        case .linkPreviewTypeWebApp:
            let value = try LinkPreviewTypeWebApp(from: decoder)
            self = .linkPreviewTypeWebApp(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .linkPreviewTypeAlbum(let value):
            try container.encode(Kind.linkPreviewTypeAlbum, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeAnimation(let value):
            try container.encode(Kind.linkPreviewTypeAnimation, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeApp(let value):
            try container.encode(Kind.linkPreviewTypeApp, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeArticle(let value):
            try container.encode(Kind.linkPreviewTypeArticle, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeAudio(let value):
            try container.encode(Kind.linkPreviewTypeAudio, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeBackground(let value):
            try container.encode(Kind.linkPreviewTypeBackground, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeChannelBoost(let value):
            try container.encode(Kind.linkPreviewTypeChannelBoost, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeChat(let value):
            try container.encode(Kind.linkPreviewTypeChat, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeDocument(let value):
            try container.encode(Kind.linkPreviewTypeDocument, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeEmbeddedAnimationPlayer(let value):
            try container.encode(Kind.linkPreviewTypeEmbeddedAnimationPlayer, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeEmbeddedAudioPlayer(let value):
            try container.encode(Kind.linkPreviewTypeEmbeddedAudioPlayer, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeEmbeddedVideoPlayer(let value):
            try container.encode(Kind.linkPreviewTypeEmbeddedVideoPlayer, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeExternalAudio(let value):
            try container.encode(Kind.linkPreviewTypeExternalAudio, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeExternalVideo(let value):
            try container.encode(Kind.linkPreviewTypeExternalVideo, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeInvoice:
            try container.encode(Kind.linkPreviewTypeInvoice, forKey: .type)
        case .linkPreviewTypeMessage:
            try container.encode(Kind.linkPreviewTypeMessage, forKey: .type)
        case .linkPreviewTypePhoto(let value):
            try container.encode(Kind.linkPreviewTypePhoto, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypePremiumGiftCode:
            try container.encode(Kind.linkPreviewTypePremiumGiftCode, forKey: .type)
        case .linkPreviewTypeShareableChatFolder:
            try container.encode(Kind.linkPreviewTypeShareableChatFolder, forKey: .type)
        case .linkPreviewTypeSticker(let value):
            try container.encode(Kind.linkPreviewTypeSticker, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeStickerSet(let value):
            try container.encode(Kind.linkPreviewTypeStickerSet, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeStory(let value):
            try container.encode(Kind.linkPreviewTypeStory, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeSupergroupBoost(let value):
            try container.encode(Kind.linkPreviewTypeSupergroupBoost, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeTheme(let value):
            try container.encode(Kind.linkPreviewTypeTheme, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeUnsupported:
            try container.encode(Kind.linkPreviewTypeUnsupported, forKey: .type)
        case .linkPreviewTypeUser(let value):
            try container.encode(Kind.linkPreviewTypeUser, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeVideo(let value):
            try container.encode(Kind.linkPreviewTypeVideo, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeVideoChat(let value):
            try container.encode(Kind.linkPreviewTypeVideoChat, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeVideoNote(let value):
            try container.encode(Kind.linkPreviewTypeVideoNote, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeVoiceNote(let value):
            try container.encode(Kind.linkPreviewTypeVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        case .linkPreviewTypeWebApp(let value):
            try container.encode(Kind.linkPreviewTypeWebApp, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The link is a link to a media album consisting of photos and videos
public struct LinkPreviewTypeAlbum: Codable, Equatable, Hashable {

    /// Album caption
    public let caption: String

    /// The list of album media
    public let media: [LinkPreviewAlbumMedia]


    public init(
        caption: String,
        media: [LinkPreviewAlbumMedia]
    ) {
        self.caption = caption
        self.media = media
    }
}

/// The link is a link to an animation
public struct LinkPreviewTypeAnimation: Codable, Equatable, Hashable {

    /// The animation
    public let animation: Animation


    public init(animation: Animation) {
        self.animation = animation
    }
}

/// The link is a link to an app at App Store or Google Play
public struct LinkPreviewTypeApp: Codable, Equatable, Hashable {

    /// Photo for the app
    public let photo: Photo


    public init(photo: Photo) {
        self.photo = photo
    }
}

/// The link is a link to a web site
public struct LinkPreviewTypeArticle: Codable, Equatable, Hashable {

    /// Article's main photo; may be null
    public let photo: Photo?


    public init(photo: Photo?) {
        self.photo = photo
    }
}

/// The link is a link to an audio
public struct LinkPreviewTypeAudio: Codable, Equatable, Hashable {

    /// The audio description
    public let audio: Audio


    public init(audio: Audio) {
        self.audio = audio
    }
}

/// The link is a link to a background. Link preview title and description are available only for filled backgrounds
public struct LinkPreviewTypeBackground: Codable, Equatable, Hashable {

    /// Type of the background; may be null if unknown
    public let backgroundType: BackgroundType?

    /// Document with the background; may be null for filled backgrounds
    public let document: Document?


    public init(
        backgroundType: BackgroundType?,
        document: Document?
    ) {
        self.backgroundType = backgroundType
        self.document = document
    }
}

/// The link is a link to boost a channel chat
public struct LinkPreviewTypeChannelBoost: Codable, Equatable, Hashable {

    /// Photo of the chat; may be null
    public let photo: ChatPhoto?


    public init(photo: ChatPhoto?) {
        self.photo = photo
    }
}

/// The link is a link to a chat
public struct LinkPreviewTypeChat: Codable, Equatable, Hashable {

    /// True, if the link only creates join request
    public let createsJoinRequest: Bool

    /// Photo of the chat; may be null
    public let photo: ChatPhoto?

    /// Type of the chat
    public let type: InviteLinkChatType


    public init(
        createsJoinRequest: Bool,
        photo: ChatPhoto?,
        type: InviteLinkChatType
    ) {
        self.createsJoinRequest = createsJoinRequest
        self.photo = photo
        self.type = type
    }
}

/// The link is a link to a general file
public struct LinkPreviewTypeDocument: Codable, Equatable, Hashable {

    /// The document description
    public let document: Document


    public init(document: Document) {
        self.document = document
    }
}

/// The link is a link to an animation player
public struct LinkPreviewTypeEmbeddedAnimationPlayer: Codable, Equatable, Hashable {

    /// Duration of the animation, in seconds
    public let duration: Int

    /// Expected height of the embedded player
    public let height: Int

    /// Thumbnail of the animation; may be null if unknown
    public let thumbnail: Photo?

    /// URL of the external animation player
    public let url: String

    /// Expected width of the embedded player
    public let width: Int


    public init(
        duration: Int,
        height: Int,
        thumbnail: Photo?,
        url: String,
        width: Int
    ) {
        self.duration = duration
        self.height = height
        self.thumbnail = thumbnail
        self.url = url
        self.width = width
    }
}

/// The link is a link to an audio player
public struct LinkPreviewTypeEmbeddedAudioPlayer: Codable, Equatable, Hashable {

    /// Duration of the audio, in seconds
    public let duration: Int

    /// Expected height of the embedded player
    public let height: Int

    /// Thumbnail of the audio; may be null if unknown
    public let thumbnail: Photo?

    /// URL of the external audio player
    public let url: String

    /// Expected width of the embedded player
    public let width: Int


    public init(
        duration: Int,
        height: Int,
        thumbnail: Photo?,
        url: String,
        width: Int
    ) {
        self.duration = duration
        self.height = height
        self.thumbnail = thumbnail
        self.url = url
        self.width = width
    }
}

/// The link is a link to a video player
public struct LinkPreviewTypeEmbeddedVideoPlayer: Codable, Equatable, Hashable {

    /// Duration of the video, in seconds
    public let duration: Int

    /// Expected height of the embedded player
    public let height: Int

    /// Thumbnail of the video; may be null if unknown
    public let thumbnail: Photo?

    /// URL of the external video player
    public let url: String

    /// Expected width of the embedded player
    public let width: Int


    public init(
        duration: Int,
        height: Int,
        thumbnail: Photo?,
        url: String,
        width: Int
    ) {
        self.duration = duration
        self.height = height
        self.thumbnail = thumbnail
        self.url = url
        self.width = width
    }
}

/// The link is a link to an audio file
public struct LinkPreviewTypeExternalAudio: Codable, Equatable, Hashable {

    /// Duration of the audio, in seconds; 0 if unknown
    public let duration: Int

    /// MIME type of the audio file
    public let mimeType: String

    /// URL of the audio file
    public let url: String


    public init(
        duration: Int,
        mimeType: String,
        url: String
    ) {
        self.duration = duration
        self.mimeType = mimeType
        self.url = url
    }
}

/// The link is a link to a video file
public struct LinkPreviewTypeExternalVideo: Codable, Equatable, Hashable {

    /// Duration of the video, in seconds; 0 if unknown
    public let duration: Int

    /// Expected height of the video preview; 0 if unknown
    public let height: Int

    /// MIME type of the video file
    public let mimeType: String

    /// URL of the video file
    public let url: String

    /// Expected width of the video preview; 0 if unknown
    public let width: Int


    public init(
        duration: Int,
        height: Int,
        mimeType: String,
        url: String,
        width: Int
    ) {
        self.duration = duration
        self.height = height
        self.mimeType = mimeType
        self.url = url
        self.width = width
    }
}

/// The link is a link to a photo
public struct LinkPreviewTypePhoto: Codable, Equatable, Hashable {

    /// The photo
    public let photo: Photo


    public init(photo: Photo) {
        self.photo = photo
    }
}

/// The link is a link to a sticker
public struct LinkPreviewTypeSticker: Codable, Equatable, Hashable {

    /// The sticker. It can be an arbitrary WEBP image and can have dimensions bigger than 512
    public let sticker: Sticker


    public init(sticker: Sticker) {
        self.sticker = sticker
    }
}

/// The link is a link to a sticker set
public struct LinkPreviewTypeStickerSet: Codable, Equatable, Hashable {

    /// Up to 4 stickers from the sticker set
    public let stickers: [Sticker]


    public init(stickers: [Sticker]) {
        self.stickers = stickers
    }
}

/// The link is a link to a story. Link preview description is unavailable
public struct LinkPreviewTypeStory: Codable, Equatable, Hashable {

    /// Story identifier
    public let storyId: Int

    /// The identifier of the chat that posted the story
    public let storySenderChatId: Int64


    public init(
        storyId: Int,
        storySenderChatId: Int64
    ) {
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}

/// The link is a link to boost a supergroup chat
public struct LinkPreviewTypeSupergroupBoost: Codable, Equatable, Hashable {

    /// Photo of the chat; may be null
    public let photo: ChatPhoto?


    public init(photo: ChatPhoto?) {
        self.photo = photo
    }
}

/// The link is a link to a cloud theme. TDLib has no theme support yet
public struct LinkPreviewTypeTheme: Codable, Equatable, Hashable {

    /// The list of files with theme description
    public let documents: [Document]

    /// Settings for the cloud theme; may be null if unknown
    public let settings: ThemeSettings?


    public init(
        documents: [Document],
        settings: ThemeSettings?
    ) {
        self.documents = documents
        self.settings = settings
    }
}

/// The link is a link to a user
public struct LinkPreviewTypeUser: Codable, Equatable, Hashable {

    /// True, if the user is a bot
    public let isBot: Bool

    /// Photo of the user; may be null if none
    public let photo: ChatPhoto?


    public init(
        isBot: Bool,
        photo: ChatPhoto?
    ) {
        self.isBot = isBot
        self.photo = photo
    }
}

/// The link is a link to a video
public struct LinkPreviewTypeVideo: Codable, Equatable, Hashable {

    /// The video description
    public let video: Video


    public init(video: Video) {
        self.video = video
    }
}

/// The link is a link to a video chat
public struct LinkPreviewTypeVideoChat: Codable, Equatable, Hashable {

    /// True, if the video chat is expected to be a live stream in a channel or a broadcast group
    public let isLiveStream: Bool

    /// Photo of the chat with the video chat; may be null if none
    public let photo: ChatPhoto?


    public init(
        isLiveStream: Bool,
        photo: ChatPhoto?
    ) {
        self.isLiveStream = isLiveStream
        self.photo = photo
    }
}

/// The link is a link to a video note message
public struct LinkPreviewTypeVideoNote: Codable, Equatable, Hashable {

    /// The video note
    public let videoNote: VideoNote


    public init(videoNote: VideoNote) {
        self.videoNote = videoNote
    }
}

/// The link is a link to a voice note message
public struct LinkPreviewTypeVoiceNote: Codable, Equatable, Hashable {

    /// The voice note
    public let voiceNote: VoiceNote


    public init(voiceNote: VoiceNote) {
        self.voiceNote = voiceNote
    }
}

/// The link is a link to a Web App
public struct LinkPreviewTypeWebApp: Codable, Equatable, Hashable {

    /// Web App photo; may be null if none
    public let photo: Photo?


    public init(photo: Photo?) {
        self.photo = photo
    }
}

