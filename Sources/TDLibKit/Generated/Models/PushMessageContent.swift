//
//  PushMessageContent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains content of a push message notification
public indirect enum PushMessageContent: Codable, Equatable, Hashable {

    /// A general message with hidden content
    case pushMessageContentHidden(PushMessageContentHidden)

    /// An animation message (GIF-style).
    case pushMessageContentAnimation(PushMessageContentAnimation)

    /// An audio message
    case pushMessageContentAudio(PushMessageContentAudio)

    /// A message with a user contact
    case pushMessageContentContact(PushMessageContentContact)

    /// A contact has registered with Telegram
    case pushMessageContentContactRegistered

    /// A document message (a general file)
    case pushMessageContentDocument(PushMessageContentDocument)

    /// A message with a game
    case pushMessageContentGame(PushMessageContentGame)

    /// A new high score was achieved in a game
    case pushMessageContentGameScore(PushMessageContentGameScore)

    /// A message with an invoice from a bot
    case pushMessageContentInvoice(PushMessageContentInvoice)

    /// A message with a location
    case pushMessageContentLocation(PushMessageContentLocation)

    /// A photo message
    case pushMessageContentPhoto(PushMessageContentPhoto)

    /// A message with a poll
    case pushMessageContentPoll(PushMessageContentPoll)

    /// A message with a Telegram Premium gift code created for the user
    case pushMessageContentPremiumGiftCode(PushMessageContentPremiumGiftCode)

    /// A message with a Telegram Premium giveaway
    case pushMessageContentPremiumGiveaway(PushMessageContentPremiumGiveaway)

    /// A screenshot of a message in the chat has been taken
    case pushMessageContentScreenshotTaken

    /// A message with a sticker
    case pushMessageContentSticker(PushMessageContentSticker)

    /// A message with a story
    case pushMessageContentStory(PushMessageContentStory)

    /// A text message
    case pushMessageContentText(PushMessageContentText)

    /// A video message
    case pushMessageContentVideo(PushMessageContentVideo)

    /// A video note message
    case pushMessageContentVideoNote(PushMessageContentVideoNote)

    /// A voice note message
    case pushMessageContentVoiceNote(PushMessageContentVoiceNote)

    /// A newly created basic group
    case pushMessageContentBasicGroupChatCreate

    /// New chat members were invited to a group
    case pushMessageContentChatAddMembers(PushMessageContentChatAddMembers)

    /// A chat photo was edited
    case pushMessageContentChatChangePhoto

    /// A chat title was edited
    case pushMessageContentChatChangeTitle(PushMessageContentChatChangeTitle)

    /// A chat background was edited
    case pushMessageContentChatSetBackground(PushMessageContentChatSetBackground)

    /// A chat theme was edited
    case pushMessageContentChatSetTheme(PushMessageContentChatSetTheme)

    /// A chat member was deleted
    case pushMessageContentChatDeleteMember(PushMessageContentChatDeleteMember)

    /// A new member joined the chat via an invite link
    case pushMessageContentChatJoinByLink

    /// A new member was accepted to the chat by an administrator
    case pushMessageContentChatJoinByRequest

    /// A new recurring payment was made by the current user
    case pushMessageContentRecurringPayment(PushMessageContentRecurringPayment)

    /// A profile photo was suggested to the user
    case pushMessageContentSuggestProfilePhoto

    /// A forwarded messages
    case pushMessageContentMessageForwards(PushMessageContentMessageForwards)

    /// A media album
    case pushMessageContentMediaAlbum(PushMessageContentMediaAlbum)


    private enum Kind: String, Codable {
        case pushMessageContentHidden
        case pushMessageContentAnimation
        case pushMessageContentAudio
        case pushMessageContentContact
        case pushMessageContentContactRegistered
        case pushMessageContentDocument
        case pushMessageContentGame
        case pushMessageContentGameScore
        case pushMessageContentInvoice
        case pushMessageContentLocation
        case pushMessageContentPhoto
        case pushMessageContentPoll
        case pushMessageContentPremiumGiftCode
        case pushMessageContentPremiumGiveaway
        case pushMessageContentScreenshotTaken
        case pushMessageContentSticker
        case pushMessageContentStory
        case pushMessageContentText
        case pushMessageContentVideo
        case pushMessageContentVideoNote
        case pushMessageContentVoiceNote
        case pushMessageContentBasicGroupChatCreate
        case pushMessageContentChatAddMembers
        case pushMessageContentChatChangePhoto
        case pushMessageContentChatChangeTitle
        case pushMessageContentChatSetBackground
        case pushMessageContentChatSetTheme
        case pushMessageContentChatDeleteMember
        case pushMessageContentChatJoinByLink
        case pushMessageContentChatJoinByRequest
        case pushMessageContentRecurringPayment
        case pushMessageContentSuggestProfilePhoto
        case pushMessageContentMessageForwards
        case pushMessageContentMediaAlbum
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .pushMessageContentHidden:
            let value = try PushMessageContentHidden(from: decoder)
            self = .pushMessageContentHidden(value)
        case .pushMessageContentAnimation:
            let value = try PushMessageContentAnimation(from: decoder)
            self = .pushMessageContentAnimation(value)
        case .pushMessageContentAudio:
            let value = try PushMessageContentAudio(from: decoder)
            self = .pushMessageContentAudio(value)
        case .pushMessageContentContact:
            let value = try PushMessageContentContact(from: decoder)
            self = .pushMessageContentContact(value)
        case .pushMessageContentContactRegistered:
            self = .pushMessageContentContactRegistered
        case .pushMessageContentDocument:
            let value = try PushMessageContentDocument(from: decoder)
            self = .pushMessageContentDocument(value)
        case .pushMessageContentGame:
            let value = try PushMessageContentGame(from: decoder)
            self = .pushMessageContentGame(value)
        case .pushMessageContentGameScore:
            let value = try PushMessageContentGameScore(from: decoder)
            self = .pushMessageContentGameScore(value)
        case .pushMessageContentInvoice:
            let value = try PushMessageContentInvoice(from: decoder)
            self = .pushMessageContentInvoice(value)
        case .pushMessageContentLocation:
            let value = try PushMessageContentLocation(from: decoder)
            self = .pushMessageContentLocation(value)
        case .pushMessageContentPhoto:
            let value = try PushMessageContentPhoto(from: decoder)
            self = .pushMessageContentPhoto(value)
        case .pushMessageContentPoll:
            let value = try PushMessageContentPoll(from: decoder)
            self = .pushMessageContentPoll(value)
        case .pushMessageContentPremiumGiftCode:
            let value = try PushMessageContentPremiumGiftCode(from: decoder)
            self = .pushMessageContentPremiumGiftCode(value)
        case .pushMessageContentPremiumGiveaway:
            let value = try PushMessageContentPremiumGiveaway(from: decoder)
            self = .pushMessageContentPremiumGiveaway(value)
        case .pushMessageContentScreenshotTaken:
            self = .pushMessageContentScreenshotTaken
        case .pushMessageContentSticker:
            let value = try PushMessageContentSticker(from: decoder)
            self = .pushMessageContentSticker(value)
        case .pushMessageContentStory:
            let value = try PushMessageContentStory(from: decoder)
            self = .pushMessageContentStory(value)
        case .pushMessageContentText:
            let value = try PushMessageContentText(from: decoder)
            self = .pushMessageContentText(value)
        case .pushMessageContentVideo:
            let value = try PushMessageContentVideo(from: decoder)
            self = .pushMessageContentVideo(value)
        case .pushMessageContentVideoNote:
            let value = try PushMessageContentVideoNote(from: decoder)
            self = .pushMessageContentVideoNote(value)
        case .pushMessageContentVoiceNote:
            let value = try PushMessageContentVoiceNote(from: decoder)
            self = .pushMessageContentVoiceNote(value)
        case .pushMessageContentBasicGroupChatCreate:
            self = .pushMessageContentBasicGroupChatCreate
        case .pushMessageContentChatAddMembers:
            let value = try PushMessageContentChatAddMembers(from: decoder)
            self = .pushMessageContentChatAddMembers(value)
        case .pushMessageContentChatChangePhoto:
            self = .pushMessageContentChatChangePhoto
        case .pushMessageContentChatChangeTitle:
            let value = try PushMessageContentChatChangeTitle(from: decoder)
            self = .pushMessageContentChatChangeTitle(value)
        case .pushMessageContentChatSetBackground:
            let value = try PushMessageContentChatSetBackground(from: decoder)
            self = .pushMessageContentChatSetBackground(value)
        case .pushMessageContentChatSetTheme:
            let value = try PushMessageContentChatSetTheme(from: decoder)
            self = .pushMessageContentChatSetTheme(value)
        case .pushMessageContentChatDeleteMember:
            let value = try PushMessageContentChatDeleteMember(from: decoder)
            self = .pushMessageContentChatDeleteMember(value)
        case .pushMessageContentChatJoinByLink:
            self = .pushMessageContentChatJoinByLink
        case .pushMessageContentChatJoinByRequest:
            self = .pushMessageContentChatJoinByRequest
        case .pushMessageContentRecurringPayment:
            let value = try PushMessageContentRecurringPayment(from: decoder)
            self = .pushMessageContentRecurringPayment(value)
        case .pushMessageContentSuggestProfilePhoto:
            self = .pushMessageContentSuggestProfilePhoto
        case .pushMessageContentMessageForwards:
            let value = try PushMessageContentMessageForwards(from: decoder)
            self = .pushMessageContentMessageForwards(value)
        case .pushMessageContentMediaAlbum:
            let value = try PushMessageContentMediaAlbum(from: decoder)
            self = .pushMessageContentMediaAlbum(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .pushMessageContentHidden(let value):
            try container.encode(Kind.pushMessageContentHidden, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentAnimation(let value):
            try container.encode(Kind.pushMessageContentAnimation, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentAudio(let value):
            try container.encode(Kind.pushMessageContentAudio, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentContact(let value):
            try container.encode(Kind.pushMessageContentContact, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentContactRegistered:
            try container.encode(Kind.pushMessageContentContactRegistered, forKey: .type)
        case .pushMessageContentDocument(let value):
            try container.encode(Kind.pushMessageContentDocument, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentGame(let value):
            try container.encode(Kind.pushMessageContentGame, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentGameScore(let value):
            try container.encode(Kind.pushMessageContentGameScore, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentInvoice(let value):
            try container.encode(Kind.pushMessageContentInvoice, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentLocation(let value):
            try container.encode(Kind.pushMessageContentLocation, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentPhoto(let value):
            try container.encode(Kind.pushMessageContentPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentPoll(let value):
            try container.encode(Kind.pushMessageContentPoll, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentPremiumGiftCode(let value):
            try container.encode(Kind.pushMessageContentPremiumGiftCode, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentPremiumGiveaway(let value):
            try container.encode(Kind.pushMessageContentPremiumGiveaway, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentScreenshotTaken:
            try container.encode(Kind.pushMessageContentScreenshotTaken, forKey: .type)
        case .pushMessageContentSticker(let value):
            try container.encode(Kind.pushMessageContentSticker, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentStory(let value):
            try container.encode(Kind.pushMessageContentStory, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentText(let value):
            try container.encode(Kind.pushMessageContentText, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentVideo(let value):
            try container.encode(Kind.pushMessageContentVideo, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentVideoNote(let value):
            try container.encode(Kind.pushMessageContentVideoNote, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentVoiceNote(let value):
            try container.encode(Kind.pushMessageContentVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentBasicGroupChatCreate:
            try container.encode(Kind.pushMessageContentBasicGroupChatCreate, forKey: .type)
        case .pushMessageContentChatAddMembers(let value):
            try container.encode(Kind.pushMessageContentChatAddMembers, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentChatChangePhoto:
            try container.encode(Kind.pushMessageContentChatChangePhoto, forKey: .type)
        case .pushMessageContentChatChangeTitle(let value):
            try container.encode(Kind.pushMessageContentChatChangeTitle, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentChatSetBackground(let value):
            try container.encode(Kind.pushMessageContentChatSetBackground, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentChatSetTheme(let value):
            try container.encode(Kind.pushMessageContentChatSetTheme, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentChatDeleteMember(let value):
            try container.encode(Kind.pushMessageContentChatDeleteMember, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentChatJoinByLink:
            try container.encode(Kind.pushMessageContentChatJoinByLink, forKey: .type)
        case .pushMessageContentChatJoinByRequest:
            try container.encode(Kind.pushMessageContentChatJoinByRequest, forKey: .type)
        case .pushMessageContentRecurringPayment(let value):
            try container.encode(Kind.pushMessageContentRecurringPayment, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentSuggestProfilePhoto:
            try container.encode(Kind.pushMessageContentSuggestProfilePhoto, forKey: .type)
        case .pushMessageContentMessageForwards(let value):
            try container.encode(Kind.pushMessageContentMessageForwards, forKey: .type)
            try value.encode(to: encoder)
        case .pushMessageContentMediaAlbum(let value):
            try container.encode(Kind.pushMessageContentMediaAlbum, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A general message with hidden content
public struct PushMessageContentHidden: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool


    public init(isPinned: Bool) {
        self.isPinned = isPinned
    }
}

/// An animation message (GIF-style).
public struct PushMessageContentAnimation: Codable, Equatable, Hashable {

    /// Message content; may be null
    public let animation: Animation?

    /// Animation caption
    public let caption: String

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool


    public init(
        animation: Animation?,
        caption: String,
        isPinned: Bool
    ) {
        self.animation = animation
        self.caption = caption
        self.isPinned = isPinned
    }
}

/// An audio message
public struct PushMessageContentAudio: Codable, Equatable, Hashable {

    /// Message content; may be null
    public let audio: Audio?

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool


    public init(
        audio: Audio?,
        isPinned: Bool
    ) {
        self.audio = audio
        self.isPinned = isPinned
    }
}

/// A message with a user contact
public struct PushMessageContentContact: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Contact's name
    public let name: String


    public init(
        isPinned: Bool,
        name: String
    ) {
        self.isPinned = isPinned
        self.name = name
    }
}

/// A document message (a general file)
public struct PushMessageContentDocument: Codable, Equatable, Hashable {

    /// Message content; may be null
    public let document: Document?

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool


    public init(
        document: Document?,
        isPinned: Bool
    ) {
        self.document = document
        self.isPinned = isPinned
    }
}

/// A message with a game
public struct PushMessageContentGame: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Game title, empty for pinned game message
    public let title: String


    public init(
        isPinned: Bool,
        title: String
    ) {
        self.isPinned = isPinned
        self.title = title
    }
}

/// A new high score was achieved in a game
public struct PushMessageContentGameScore: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// New score, 0 for pinned message
    public let score: Int

    /// Game title, empty for pinned message
    public let title: String


    public init(
        isPinned: Bool,
        score: Int,
        title: String
    ) {
        self.isPinned = isPinned
        self.score = score
        self.title = title
    }
}

/// A message with an invoice from a bot
public struct PushMessageContentInvoice: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Product price
    public let price: String


    public init(
        isPinned: Bool,
        price: String
    ) {
        self.isPinned = isPinned
        self.price = price
    }
}

/// A message with a location
public struct PushMessageContentLocation: Codable, Equatable, Hashable {

    /// True, if the location is live
    public let isLive: Bool

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool


    public init(
        isLive: Bool,
        isPinned: Bool
    ) {
        self.isLive = isLive
        self.isPinned = isPinned
    }
}

/// A photo message
public struct PushMessageContentPhoto: Codable, Equatable, Hashable {

    /// Photo caption
    public let caption: String

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// True, if the photo is secret
    public let isSecret: Bool

    /// Message content; may be null
    public let photo: Photo?


    public init(
        caption: String,
        isPinned: Bool,
        isSecret: Bool,
        photo: Photo?
    ) {
        self.caption = caption
        self.isPinned = isPinned
        self.isSecret = isSecret
        self.photo = photo
    }
}

/// A message with a poll
public struct PushMessageContentPoll: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// True, if the poll is regular and not in quiz mode
    public let isRegular: Bool

    /// Poll question
    public let question: String


    public init(
        isPinned: Bool,
        isRegular: Bool,
        question: String
    ) {
        self.isPinned = isPinned
        self.isRegular = isRegular
        self.question = question
    }
}

/// A message with a Telegram Premium gift code created for the user
public struct PushMessageContentPremiumGiftCode: Codable, Equatable, Hashable {

    /// Number of months the Telegram Premium subscription will be active after code activation
    public let monthCount: Int


    public init(monthCount: Int) {
        self.monthCount = monthCount
    }
}

/// A message with a Telegram Premium giveaway
public struct PushMessageContentPremiumGiveaway: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Number of months the Telegram Premium subscription will be active after code activation; 0 for pinned message
    public let monthCount: Int

    /// Number of users which will receive Telegram Premium subscription gift codes; 0 for pinned message
    public let winnerCount: Int


    public init(
        isPinned: Bool,
        monthCount: Int,
        winnerCount: Int
    ) {
        self.isPinned = isPinned
        self.monthCount = monthCount
        self.winnerCount = winnerCount
    }
}

/// A message with a sticker
public struct PushMessageContentSticker: Codable, Equatable, Hashable {

    /// Emoji corresponding to the sticker; may be empty
    public let emoji: String

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Message content; may be null
    public let sticker: Sticker?


    public init(
        emoji: String,
        isPinned: Bool,
        sticker: Sticker?
    ) {
        self.emoji = emoji
        self.isPinned = isPinned
        self.sticker = sticker
    }
}

/// A message with a story
public struct PushMessageContentStory: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool


    public init(isPinned: Bool) {
        self.isPinned = isPinned
    }
}

/// A text message
public struct PushMessageContentText: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Message text
    public let text: String


    public init(
        isPinned: Bool,
        text: String
    ) {
        self.isPinned = isPinned
        self.text = text
    }
}

/// A video message
public struct PushMessageContentVideo: Codable, Equatable, Hashable {

    /// Video caption
    public let caption: String

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// True, if the video is secret
    public let isSecret: Bool

    /// Message content; may be null
    public let video: Video?


    public init(
        caption: String,
        isPinned: Bool,
        isSecret: Bool,
        video: Video?
    ) {
        self.caption = caption
        self.isPinned = isPinned
        self.isSecret = isSecret
        self.video = video
    }
}

/// A video note message
public struct PushMessageContentVideoNote: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Message content; may be null
    public let videoNote: VideoNote?


    public init(
        isPinned: Bool,
        videoNote: VideoNote?
    ) {
        self.isPinned = isPinned
        self.videoNote = videoNote
    }
}

/// A voice note message
public struct PushMessageContentVoiceNote: Codable, Equatable, Hashable {

    /// True, if the message is a pinned message with the specified content
    public let isPinned: Bool

    /// Message content; may be null
    public let voiceNote: VoiceNote?


    public init(
        isPinned: Bool,
        voiceNote: VoiceNote?
    ) {
        self.isPinned = isPinned
        self.voiceNote = voiceNote
    }
}

/// New chat members were invited to a group
public struct PushMessageContentChatAddMembers: Codable, Equatable, Hashable {

    /// True, if the current user was added to the group
    public let isCurrentUser: Bool

    /// True, if the user has returned to the group themselves
    public let isReturned: Bool

    /// Name of the added member
    public let memberName: String


    public init(
        isCurrentUser: Bool,
        isReturned: Bool,
        memberName: String
    ) {
        self.isCurrentUser = isCurrentUser
        self.isReturned = isReturned
        self.memberName = memberName
    }
}

/// A chat title was edited
public struct PushMessageContentChatChangeTitle: Codable, Equatable, Hashable {

    /// New chat title
    public let title: String


    public init(title: String) {
        self.title = title
    }
}

/// A chat background was edited
public struct PushMessageContentChatSetBackground: Codable, Equatable, Hashable {

    /// True, if the set background is the same as the background of the current user
    public let isSame: Bool


    public init(isSame: Bool) {
        self.isSame = isSame
    }
}

/// A chat theme was edited
public struct PushMessageContentChatSetTheme: Codable, Equatable, Hashable {

    /// If non-empty, name of a new theme, set for the chat. Otherwise, the chat theme was reset to the default one
    public let themeName: String


    public init(themeName: String) {
        self.themeName = themeName
    }
}

/// A chat member was deleted
public struct PushMessageContentChatDeleteMember: Codable, Equatable, Hashable {

    /// True, if the current user was deleted from the group
    public let isCurrentUser: Bool

    /// True, if the user has left the group themselves
    public let isLeft: Bool

    /// Name of the deleted member
    public let memberName: String


    public init(
        isCurrentUser: Bool,
        isLeft: Bool,
        memberName: String
    ) {
        self.isCurrentUser = isCurrentUser
        self.isLeft = isLeft
        self.memberName = memberName
    }
}

/// A new recurring payment was made by the current user
public struct PushMessageContentRecurringPayment: Codable, Equatable, Hashable {

    /// The paid amount
    public let amount: String


    public init(amount: String) {
        self.amount = amount
    }
}

/// A forwarded messages
public struct PushMessageContentMessageForwards: Codable, Equatable, Hashable {

    /// Number of forwarded messages
    public let totalCount: Int


    public init(totalCount: Int) {
        self.totalCount = totalCount
    }
}

/// A media album
public struct PushMessageContentMediaAlbum: Codable, Equatable, Hashable {

    /// True, if the album has at least one audio file
    public let hasAudios: Bool

    /// True, if the album has at least one document
    public let hasDocuments: Bool

    /// True, if the album has at least one photo
    public let hasPhotos: Bool

    /// True, if the album has at least one video file
    public let hasVideos: Bool

    /// Number of messages in the album
    public let totalCount: Int


    public init(
        hasAudios: Bool,
        hasDocuments: Bool,
        hasPhotos: Bool,
        hasVideos: Bool,
        totalCount: Int
    ) {
        self.hasAudios = hasAudios
        self.hasDocuments = hasDocuments
        self.hasPhotos = hasPhotos
        self.hasVideos = hasVideos
        self.totalCount = totalCount
    }
}

