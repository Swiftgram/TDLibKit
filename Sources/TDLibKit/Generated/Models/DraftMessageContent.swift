//
//  DraftMessageContent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Content of the message draft
public indirect enum DraftMessageContent: Codable, Equatable, Hashable {

    /// A text message draft
    case draftMessageContentText(DraftMessageContentText)

    /// A rich message draft; not supported in setChatDraftMessage
    case draftMessageContentRichMessage(DraftMessageContentRichMessage)

    /// A rich message draft; only for setChatDraftMessage
    case draftMessageContentInputRichMessage(DraftMessageContentInputRichMessage)

    /// A video note message draft
    case draftMessageContentVideoNote(DraftMessageContentVideoNote)

    /// A voice note message draft
    case draftMessageContentVoiceNote(DraftMessageContentVoiceNote)


    private enum Kind: String, Codable {
        case draftMessageContentText
        case draftMessageContentRichMessage
        case draftMessageContentInputRichMessage
        case draftMessageContentVideoNote
        case draftMessageContentVoiceNote
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .draftMessageContentText:
            let value = try DraftMessageContentText(from: decoder)
            self = .draftMessageContentText(value)
        case .draftMessageContentRichMessage:
            let value = try DraftMessageContentRichMessage(from: decoder)
            self = .draftMessageContentRichMessage(value)
        case .draftMessageContentInputRichMessage:
            let value = try DraftMessageContentInputRichMessage(from: decoder)
            self = .draftMessageContentInputRichMessage(value)
        case .draftMessageContentVideoNote:
            let value = try DraftMessageContentVideoNote(from: decoder)
            self = .draftMessageContentVideoNote(value)
        case .draftMessageContentVoiceNote:
            let value = try DraftMessageContentVoiceNote(from: decoder)
            self = .draftMessageContentVoiceNote(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .draftMessageContentText(let value):
            try container.encode(Kind.draftMessageContentText, forKey: .type)
            try value.encode(to: encoder)
        case .draftMessageContentRichMessage(let value):
            try container.encode(Kind.draftMessageContentRichMessage, forKey: .type)
            try value.encode(to: encoder)
        case .draftMessageContentInputRichMessage(let value):
            try container.encode(Kind.draftMessageContentInputRichMessage, forKey: .type)
            try value.encode(to: encoder)
        case .draftMessageContentVideoNote(let value):
            try container.encode(Kind.draftMessageContentVideoNote, forKey: .type)
            try value.encode(to: encoder)
        case .draftMessageContentVoiceNote(let value):
            try container.encode(Kind.draftMessageContentVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A text message draft
public struct DraftMessageContentText: Codable, Equatable, Hashable {

    /// Options to be used for generation of a link preview; may be null if none; pass null to use default link preview options
    public let linkPreviewOptions: LinkPreviewOptions?

    /// Formatted text to be saved as a draft; 0-getOption("message_text_length_max") characters
    public let text: FormattedText


    public init(
        linkPreviewOptions: LinkPreviewOptions?,
        text: FormattedText
    ) {
        self.linkPreviewOptions = linkPreviewOptions
        self.text = text
    }
}

/// A rich message draft; not supported in setChatDraftMessage
public struct DraftMessageContentRichMessage: Codable, Equatable, Hashable {

    /// The rich message
    public let message: RichMessage


    public init(message: RichMessage) {
        self.message = message
    }
}

/// A rich message draft; only for setChatDraftMessage
public struct DraftMessageContentInputRichMessage: Codable, Equatable, Hashable {

    /// The rich message
    public let message: InputRichMessage


    public init(message: InputRichMessage) {
        self.message = message
    }
}

/// A video note message draft
public struct DraftMessageContentVideoNote: Codable, Equatable, Hashable {

    /// Duration of the video, in seconds; 0-60
    public let duration: Int

    /// Path to the file with the video note
    public let filePath: String

    /// Video width and height; must be positive and not greater than 640
    public let length: Int

    /// Video note self-destruct type; may be null if none; pass null if none; private chats only
    public let selfDestructType: MessageSelfDestructType?


    public init(
        duration: Int,
        filePath: String,
        length: Int,
        selfDestructType: MessageSelfDestructType?
    ) {
        self.duration = duration
        self.filePath = filePath
        self.length = length
        self.selfDestructType = selfDestructType
    }
}

/// A voice note message draft
public struct DraftMessageContentVoiceNote: Codable, Equatable, Hashable {

    /// Duration of the voice note, in seconds
    public let duration: Int

    /// Path to the file with the voice note
    public let filePath: String

    /// Voice note self-destruct type; may be null if none; pass null if none; private chats only
    public let selfDestructType: MessageSelfDestructType?

    /// Waveform representation of the voice note in 5-bit format
    public let waveform: Data


    public init(
        duration: Int,
        filePath: String,
        selfDestructType: MessageSelfDestructType?,
        waveform: Data
    ) {
        self.duration = duration
        self.filePath = filePath
        self.selfDestructType = selfDestructType
        self.waveform = waveform
    }
}

