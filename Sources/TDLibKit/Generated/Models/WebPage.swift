//
//  WebPage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a link preview
public struct WebPage: Codable, Equatable, Hashable {

    /// Preview of the content as an animation, if available; may be null
    public let animation: Animation?

    /// Preview of the content as an audio file, if available; may be null
    public let audio: Audio?

    /// Author of the content
    public let author: String

    public let description: FormattedText

    /// URL to display
    public let displayUrl: String

    /// Preview of the content as a document, if available; may be null
    public let document: Document?

    /// Duration of the content, in seconds
    public let duration: Int

    /// Height of the embedded preview
    public let embedHeight: Int

    /// MIME type of the embedded preview, (e.g., text/html or video/mp4)
    public let embedType: String

    /// URL to show in the embedded preview
    public let embedUrl: String

    /// Width of the embedded preview
    public let embedWidth: Int

    /// True, if size of media in the preview can be changed
    public let hasLargeMedia: Bool

    /// Version of web page instant view (currently, can be 1 or 2); 0 if none
    public let instantViewVersion: Int

    /// Image representing the content; may be null
    public let photo: Photo?

    /// True, if the link preview must be shown above message text; otherwise, the link preview must be shown below the message text
    public let showAboveText: Bool

    /// True, if large media preview must be shown; otherwise, the media preview must be shown small and only the first frame must be shown for videos
    public let showLargeMedia: Bool

    /// Short name of the site (e.g., Google Docs, App Store)
    public let siteName: String

    /// True, if there is no need to show an ordinary open URL confirmation, when opening the URL from the preview, because the URL is shown in the message text in clear
    public let skipConfirmation: Bool

    /// Preview of the content as a sticker for small WEBP files, if available; may be null
    public let sticker: Sticker?

    /// Up to 4 stickers from the sticker set available via the link
    public let stickers: [Sticker]

    /// The identifier of the previewed story; 0 if none
    public let storyId: Int

    /// The identifier of the sender of the previewed story; 0 if none
    public let storySenderChatId: Int64

    /// Title of the content
    public let title: String

    /// Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else
    public let type: String

    /// Original URL of the link
    public let url: String

    /// Preview of the content as a video, if available; may be null
    public let video: Video?

    /// Preview of the content as a video note, if available; may be null
    public let videoNote: VideoNote?

    /// Preview of the content as a voice note, if available; may be null
    public let voiceNote: VoiceNote?


    public init(
        animation: Animation?,
        audio: Audio?,
        author: String,
        description: FormattedText,
        displayUrl: String,
        document: Document?,
        duration: Int,
        embedHeight: Int,
        embedType: String,
        embedUrl: String,
        embedWidth: Int,
        hasLargeMedia: Bool,
        instantViewVersion: Int,
        photo: Photo?,
        showAboveText: Bool,
        showLargeMedia: Bool,
        siteName: String,
        skipConfirmation: Bool,
        sticker: Sticker?,
        stickers: [Sticker],
        storyId: Int,
        storySenderChatId: Int64,
        title: String,
        type: String,
        url: String,
        video: Video?,
        videoNote: VideoNote?,
        voiceNote: VoiceNote?
    ) {
        self.animation = animation
        self.audio = audio
        self.author = author
        self.description = description
        self.displayUrl = displayUrl
        self.document = document
        self.duration = duration
        self.embedHeight = embedHeight
        self.embedType = embedType
        self.embedUrl = embedUrl
        self.embedWidth = embedWidth
        self.hasLargeMedia = hasLargeMedia
        self.instantViewVersion = instantViewVersion
        self.photo = photo
        self.showAboveText = showAboveText
        self.showLargeMedia = showLargeMedia
        self.siteName = siteName
        self.skipConfirmation = skipConfirmation
        self.sticker = sticker
        self.stickers = stickers
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
        self.title = title
        self.type = type
        self.url = url
        self.video = video
        self.videoNote = videoNote
        self.voiceNote = voiceNote
    }
}

