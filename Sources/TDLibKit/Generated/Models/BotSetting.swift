//
//  BotSetting.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Describes a setting of a bot
public indirect enum BotSetting: Codable, Equatable, Hashable {

    /// A setting for managing whether the bot supports inline queries
    case botSettingIsInline(BotSettingIsInline)

    /// A setting for managing the placeholder for inline queries to the bot
    case botSettingInlineQueryPlaceholder(BotSettingInlineQueryPlaceholder)

    /// A setting for managing whether the location of the user is expected to be sent with every inline query to the bot
    case botSettingNeedLocation(BotSettingNeedLocation)

    /// A setting for managing the share of chosen inline query results that are received by the bot in updateNewChosenInlineResult
    case botSettingInlineFeedback(BotSettingInlineFeedback)

    /// A setting for managing whether the bot can be invited to basic group and supergroup chats
    case botSettingCanJoinGroups(BotSettingCanJoinGroups)

    /// A setting for managing whether the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot
    case botSettingCanReadAllGroupMessages(BotSettingCanReadAllGroupMessages)

    /// A setting for managing whether the bot supports connection to user accounts for chat automation
    case botSettingCanConnectToBusiness(BotSettingCanConnectToBusiness)

    /// A setting for managing whether the bot can manage other bots
    case botSettingCanManageBots(BotSettingCanManageBots)

    /// A setting for managing whether the bot can be queried by username from any non-secret chat
    case botSettingSupportsGuestQueries(BotSettingSupportsGuestQueries)

    /// A setting for managing whether the bot can be set as a guard bot in supergroup chats
    case botSettingIsGuard(BotSettingIsGuard)

    /// A setting for managing whether the bot has topics
    case botSettingHasTopics(BotSettingHasTopics)

    /// A setting for managing whether users can create and delete topics in the chat with the bot
    case botSettingAllowsUsersToCreateTopics(BotSettingAllowsUsersToCreateTopics)

    /// A setting for managing whether topics of the bot are shown in a sidebar
    case botSettingHasTopicSidebar(BotSettingHasTopicSidebar)

    /// A setting for managing whether the bot can communicate with other bots in groups, private chats, and through business accounts
    case botSettingCanCommunicateWithBots(BotSettingCanCommunicateWithBots)

    /// A setting for managing how callback queries are received by the bot
    case botSettingCallbackQueryMode(BotSettingCallbackQueryMode)


    private enum Kind: String, Codable {
        case botSettingIsInline
        case botSettingInlineQueryPlaceholder
        case botSettingNeedLocation
        case botSettingInlineFeedback
        case botSettingCanJoinGroups
        case botSettingCanReadAllGroupMessages
        case botSettingCanConnectToBusiness
        case botSettingCanManageBots
        case botSettingSupportsGuestQueries
        case botSettingIsGuard
        case botSettingHasTopics
        case botSettingAllowsUsersToCreateTopics
        case botSettingHasTopicSidebar
        case botSettingCanCommunicateWithBots
        case botSettingCallbackQueryMode
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .botSettingIsInline:
            let value = try BotSettingIsInline(from: decoder)
            self = .botSettingIsInline(value)
        case .botSettingInlineQueryPlaceholder:
            let value = try BotSettingInlineQueryPlaceholder(from: decoder)
            self = .botSettingInlineQueryPlaceholder(value)
        case .botSettingNeedLocation:
            let value = try BotSettingNeedLocation(from: decoder)
            self = .botSettingNeedLocation(value)
        case .botSettingInlineFeedback:
            let value = try BotSettingInlineFeedback(from: decoder)
            self = .botSettingInlineFeedback(value)
        case .botSettingCanJoinGroups:
            let value = try BotSettingCanJoinGroups(from: decoder)
            self = .botSettingCanJoinGroups(value)
        case .botSettingCanReadAllGroupMessages:
            let value = try BotSettingCanReadAllGroupMessages(from: decoder)
            self = .botSettingCanReadAllGroupMessages(value)
        case .botSettingCanConnectToBusiness:
            let value = try BotSettingCanConnectToBusiness(from: decoder)
            self = .botSettingCanConnectToBusiness(value)
        case .botSettingCanManageBots:
            let value = try BotSettingCanManageBots(from: decoder)
            self = .botSettingCanManageBots(value)
        case .botSettingSupportsGuestQueries:
            let value = try BotSettingSupportsGuestQueries(from: decoder)
            self = .botSettingSupportsGuestQueries(value)
        case .botSettingIsGuard:
            let value = try BotSettingIsGuard(from: decoder)
            self = .botSettingIsGuard(value)
        case .botSettingHasTopics:
            let value = try BotSettingHasTopics(from: decoder)
            self = .botSettingHasTopics(value)
        case .botSettingAllowsUsersToCreateTopics:
            let value = try BotSettingAllowsUsersToCreateTopics(from: decoder)
            self = .botSettingAllowsUsersToCreateTopics(value)
        case .botSettingHasTopicSidebar:
            let value = try BotSettingHasTopicSidebar(from: decoder)
            self = .botSettingHasTopicSidebar(value)
        case .botSettingCanCommunicateWithBots:
            let value = try BotSettingCanCommunicateWithBots(from: decoder)
            self = .botSettingCanCommunicateWithBots(value)
        case .botSettingCallbackQueryMode:
            let value = try BotSettingCallbackQueryMode(from: decoder)
            self = .botSettingCallbackQueryMode(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .botSettingIsInline(let value):
            try container.encode(Kind.botSettingIsInline, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingInlineQueryPlaceholder(let value):
            try container.encode(Kind.botSettingInlineQueryPlaceholder, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingNeedLocation(let value):
            try container.encode(Kind.botSettingNeedLocation, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingInlineFeedback(let value):
            try container.encode(Kind.botSettingInlineFeedback, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingCanJoinGroups(let value):
            try container.encode(Kind.botSettingCanJoinGroups, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingCanReadAllGroupMessages(let value):
            try container.encode(Kind.botSettingCanReadAllGroupMessages, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingCanConnectToBusiness(let value):
            try container.encode(Kind.botSettingCanConnectToBusiness, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingCanManageBots(let value):
            try container.encode(Kind.botSettingCanManageBots, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingSupportsGuestQueries(let value):
            try container.encode(Kind.botSettingSupportsGuestQueries, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingIsGuard(let value):
            try container.encode(Kind.botSettingIsGuard, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingHasTopics(let value):
            try container.encode(Kind.botSettingHasTopics, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingAllowsUsersToCreateTopics(let value):
            try container.encode(Kind.botSettingAllowsUsersToCreateTopics, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingHasTopicSidebar(let value):
            try container.encode(Kind.botSettingHasTopicSidebar, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingCanCommunicateWithBots(let value):
            try container.encode(Kind.botSettingCanCommunicateWithBots, forKey: .type)
            try value.encode(to: encoder)
        case .botSettingCallbackQueryMode(let value):
            try container.encode(Kind.botSettingCallbackQueryMode, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A setting for managing whether the bot supports inline queries
public struct BotSettingIsInline: Codable, Equatable, Hashable {

    /// True, if the bot supports inline queries
    public let isInline: Bool


    public init(isInline: Bool) {
        self.isInline = isInline
    }
}

/// A setting for managing the placeholder for inline queries to the bot
public struct BotSettingInlineQueryPlaceholder: Codable, Equatable, Hashable {

    /// Placeholder for inline queries (displayed in the application input field); pass an empty string to use the default placeholder
    public let placeholder: String


    public init(placeholder: String) {
        self.placeholder = placeholder
    }
}

/// A setting for managing whether the location of the user is expected to be sent with every inline query to the bot
public struct BotSettingNeedLocation: Codable, Equatable, Hashable {

    /// True, if the location of the user is expected to be sent with every inline query to the bot
    public let needLocation: Bool


    public init(needLocation: Bool) {
        self.needLocation = needLocation
    }
}

/// A setting for managing the share of chosen inline query results that are received by the bot in updateNewChosenInlineResult
public struct BotSettingInlineFeedback: Codable, Equatable, Hashable {

    /// Denominator of the share of chosen inline query results that are received by the bot; the bot receives 1 out of share_denominator chosen results. Must be one of 1, 10, 100, or 1000; pass 0 to stop receiving chosen inline query results
    public let shareDenominator: Int


    public init(shareDenominator: Int) {
        self.shareDenominator = shareDenominator
    }
}

/// A setting for managing whether the bot can be invited to basic group and supergroup chats
public struct BotSettingCanJoinGroups: Codable, Equatable, Hashable {

    /// True, if the bot can be invited to basic group and supergroup chats
    public let canJoinGroups: Bool


    public init(canJoinGroups: Bool) {
        self.canJoinGroups = canJoinGroups
    }
}

/// A setting for managing whether the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot
public struct BotSettingCanReadAllGroupMessages: Codable, Equatable, Hashable {

    /// True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot
    public let canReadAllGroupMessages: Bool


    public init(canReadAllGroupMessages: Bool) {
        self.canReadAllGroupMessages = canReadAllGroupMessages
    }
}

/// A setting for managing whether the bot supports connection to user accounts for chat automation
public struct BotSettingCanConnectToBusiness: Codable, Equatable, Hashable {

    /// True, if the bot supports connection to user accounts for chat automation
    public let canConnectToBusiness: Bool


    public init(canConnectToBusiness: Bool) {
        self.canConnectToBusiness = canConnectToBusiness
    }
}

/// A setting for managing whether the bot can manage other bots
public struct BotSettingCanManageBots: Codable, Equatable, Hashable {

    /// True, if the bot can manage other bots
    public let canManageBots: Bool


    public init(canManageBots: Bool) {
        self.canManageBots = canManageBots
    }
}

/// A setting for managing whether the bot can be queried by username from any non-secret chat
public struct BotSettingSupportsGuestQueries: Codable, Equatable, Hashable {

    /// True, if the bot can be queried by username from any non-secret chat
    public let supportsGuestQueries: Bool


    public init(supportsGuestQueries: Bool) {
        self.supportsGuestQueries = supportsGuestQueries
    }
}

/// A setting for managing whether the bot can be set as a guard bot in supergroup chats
public struct BotSettingIsGuard: Codable, Equatable, Hashable {

    /// True, if the bot can be set as a guard bot in supergroup chats
    public let isGuard: Bool


    public init(isGuard: Bool) {
        self.isGuard = isGuard
    }
}

/// A setting for managing whether the bot has topics
public struct BotSettingHasTopics: Codable, Equatable, Hashable {

    /// True, if the bot has topics
    public let hasTopics: Bool


    public init(hasTopics: Bool) {
        self.hasTopics = hasTopics
    }
}

/// A setting for managing whether users can create and delete topics in the chat with the bot
public struct BotSettingAllowsUsersToCreateTopics: Codable, Equatable, Hashable {

    /// True, if users can create and delete topics in the chat with the bot
    public let allowsUsersToCreateTopics: Bool


    public init(allowsUsersToCreateTopics: Bool) {
        self.allowsUsersToCreateTopics = allowsUsersToCreateTopics
    }
}

/// A setting for managing whether topics of the bot are shown in a sidebar
public struct BotSettingHasTopicSidebar: Codable, Equatable, Hashable {

    /// True, if the bot has topics, which are shown in a sidebar
    public let hasTopicSidebar: Bool


    public init(hasTopicSidebar: Bool) {
        self.hasTopicSidebar = hasTopicSidebar
    }
}

/// A setting for managing whether the bot can communicate with other bots in groups, private chats, and through business accounts
public struct BotSettingCanCommunicateWithBots: Codable, Equatable, Hashable {

    /// True, if the bot can communicate with other bots in groups, private chats, and through business accounts
    public let canCommunicateWithBots: Bool


    public init(canCommunicateWithBots: Bool) {
        self.canCommunicateWithBots = canCommunicateWithBots
    }
}

/// A setting for managing how callback queries are received by the bot
public struct BotSettingCallbackQueryMode: Codable, Equatable, Hashable {

    /// The new mode
    public let mode: BotCallbackQueryMode


    public init(mode: BotCallbackQueryMode) {
        self.mode = mode
    }
}

