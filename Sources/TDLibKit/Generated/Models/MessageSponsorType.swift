//
//  MessageSponsorType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-437c2d0c
//  https://github.com/tdlib/td/tree/437c2d0c
//

import Foundation


/// Describes type of a message sponsor
public enum MessageSponsorType: Codable, Equatable, Hashable {

    /// The sponsor is a bot
    case messageSponsorTypeBot(MessageSponsorTypeBot)

    /// The sponsor is a web app
    case messageSponsorTypeWebApp(MessageSponsorTypeWebApp)

    /// The sponsor is a public channel chat
    case messageSponsorTypePublicChannel(MessageSponsorTypePublicChannel)

    /// The sponsor is a private channel chat
    case messageSponsorTypePrivateChannel(MessageSponsorTypePrivateChannel)

    /// The sponsor is a website
    case messageSponsorTypeWebsite(MessageSponsorTypeWebsite)


    private enum Kind: String, Codable {
        case messageSponsorTypeBot
        case messageSponsorTypeWebApp
        case messageSponsorTypePublicChannel
        case messageSponsorTypePrivateChannel
        case messageSponsorTypeWebsite
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageSponsorTypeBot:
            let value = try MessageSponsorTypeBot(from: decoder)
            self = .messageSponsorTypeBot(value)
        case .messageSponsorTypeWebApp:
            let value = try MessageSponsorTypeWebApp(from: decoder)
            self = .messageSponsorTypeWebApp(value)
        case .messageSponsorTypePublicChannel:
            let value = try MessageSponsorTypePublicChannel(from: decoder)
            self = .messageSponsorTypePublicChannel(value)
        case .messageSponsorTypePrivateChannel:
            let value = try MessageSponsorTypePrivateChannel(from: decoder)
            self = .messageSponsorTypePrivateChannel(value)
        case .messageSponsorTypeWebsite:
            let value = try MessageSponsorTypeWebsite(from: decoder)
            self = .messageSponsorTypeWebsite(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageSponsorTypeBot(let value):
            try container.encode(Kind.messageSponsorTypeBot, forKey: .type)
            try value.encode(to: encoder)
        case .messageSponsorTypeWebApp(let value):
            try container.encode(Kind.messageSponsorTypeWebApp, forKey: .type)
            try value.encode(to: encoder)
        case .messageSponsorTypePublicChannel(let value):
            try container.encode(Kind.messageSponsorTypePublicChannel, forKey: .type)
            try value.encode(to: encoder)
        case .messageSponsorTypePrivateChannel(let value):
            try container.encode(Kind.messageSponsorTypePrivateChannel, forKey: .type)
            try value.encode(to: encoder)
        case .messageSponsorTypeWebsite(let value):
            try container.encode(Kind.messageSponsorTypeWebsite, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The sponsor is a bot
public struct MessageSponsorTypeBot: Codable, Equatable, Hashable {

    /// User identifier of the bot
    public let botUserId: Int64

    /// An internal link to be opened when the sponsored message is clicked
    public let link: InternalLinkType


    public init(
        botUserId: Int64,
        link: InternalLinkType
    ) {
        self.botUserId = botUserId
        self.link = link
    }
}

/// The sponsor is a web app
public struct MessageSponsorTypeWebApp: Codable, Equatable, Hashable {

    /// An internal link to be opened when the sponsored message is clicked
    public let link: InternalLinkType

    /// Web App title
    public let webAppTitle: String


    public init(
        link: InternalLinkType,
        webAppTitle: String
    ) {
        self.link = link
        self.webAppTitle = webAppTitle
    }
}

/// The sponsor is a public channel chat
public struct MessageSponsorTypePublicChannel: Codable, Equatable, Hashable {

    /// Sponsor chat identifier
    public let chatId: Int64

    /// An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead
    public let link: InternalLinkType?


    public init(
        chatId: Int64,
        link: InternalLinkType?
    ) {
        self.chatId = chatId
        self.link = link
    }
}

/// The sponsor is a private channel chat
public struct MessageSponsorTypePrivateChannel: Codable, Equatable, Hashable {

    /// Invite link for the channel
    public let inviteLink: String

    /// Title of the chat
    public let title: String


    public init(
        inviteLink: String,
        title: String
    ) {
        self.inviteLink = inviteLink
        self.title = title
    }
}

/// The sponsor is a website
public struct MessageSponsorTypeWebsite: Codable, Equatable, Hashable {

    /// Name of the website
    public let name: String

    /// URL of the website
    public let url: String


    public init(
        name: String,
        url: String
    ) {
        self.name = name
        self.url = url
    }
}

