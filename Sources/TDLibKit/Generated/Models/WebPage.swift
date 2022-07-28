//
//  WebPage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes a web page preview
public struct WebPage: Codable, Equatable {

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

    /// Version of instant view, available for the web page (currently, can be 1 or 2), 0 if none
    public let instantViewVersion: Int

    /// Image representing the content; may be null
    public let photo: Photo?

    /// Short name of the site (e.g., Google Docs, App Store)
    public let siteName: String

    /// Preview of the content as a sticker for small WEBP files, if available; may be null
    public let sticker: Sticker?

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
        instantViewVersion: Int,
        photo: Photo?,
        siteName: String,
        sticker: Sticker?,
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
        self.instantViewVersion = instantViewVersion
        self.photo = photo
        self.siteName = siteName
        self.sticker = sticker
        self.title = title
        self.type = type
        self.url = url
        self.video = video
        self.videoNote = videoNote
        self.voiceNote = voiceNote
    }
}

