//
//  KeyboardButtonType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-97ec3eac
//  https://github.com/tdlib/td/tree/97ec3eac
//

import Foundation


/// Describes a keyboard button type
public enum KeyboardButtonType: Codable, Equatable, Hashable {

    /// A simple button, with text that must be sent when the button is pressed
    case keyboardButtonTypeText

    /// A button that sends the user's phone number when pressed; available only in private chats
    case keyboardButtonTypeRequestPhoneNumber

    /// A button that sends the user's location when pressed; available only in private chats
    case keyboardButtonTypeRequestLocation

    /// A button that allows the user to create and send a poll when pressed; available only in private chats
    case keyboardButtonTypeRequestPoll(KeyboardButtonTypeRequestPoll)

    /// A button that requests a user to be shared by the current user; available only in private chats. Use the method shareUserWithBot to complete the request
    case keyboardButtonTypeRequestUser(KeyboardButtonTypeRequestUser)

    /// A button that requests a chat to be shared by the current user; available only in private chats. Use the method shareChatWithBot to complete the request
    case keyboardButtonTypeRequestChat(KeyboardButtonTypeRequestChat)

    /// A button that opens a Web App by calling getWebAppUrl
    case keyboardButtonTypeWebApp(KeyboardButtonTypeWebApp)


    private enum Kind: String, Codable {
        case keyboardButtonTypeText
        case keyboardButtonTypeRequestPhoneNumber
        case keyboardButtonTypeRequestLocation
        case keyboardButtonTypeRequestPoll
        case keyboardButtonTypeRequestUser
        case keyboardButtonTypeRequestChat
        case keyboardButtonTypeWebApp
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .keyboardButtonTypeText:
            self = .keyboardButtonTypeText
        case .keyboardButtonTypeRequestPhoneNumber:
            self = .keyboardButtonTypeRequestPhoneNumber
        case .keyboardButtonTypeRequestLocation:
            self = .keyboardButtonTypeRequestLocation
        case .keyboardButtonTypeRequestPoll:
            let value = try KeyboardButtonTypeRequestPoll(from: decoder)
            self = .keyboardButtonTypeRequestPoll(value)
        case .keyboardButtonTypeRequestUser:
            let value = try KeyboardButtonTypeRequestUser(from: decoder)
            self = .keyboardButtonTypeRequestUser(value)
        case .keyboardButtonTypeRequestChat:
            let value = try KeyboardButtonTypeRequestChat(from: decoder)
            self = .keyboardButtonTypeRequestChat(value)
        case .keyboardButtonTypeWebApp:
            let value = try KeyboardButtonTypeWebApp(from: decoder)
            self = .keyboardButtonTypeWebApp(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .keyboardButtonTypeText:
            try container.encode(Kind.keyboardButtonTypeText, forKey: .type)
        case .keyboardButtonTypeRequestPhoneNumber:
            try container.encode(Kind.keyboardButtonTypeRequestPhoneNumber, forKey: .type)
        case .keyboardButtonTypeRequestLocation:
            try container.encode(Kind.keyboardButtonTypeRequestLocation, forKey: .type)
        case .keyboardButtonTypeRequestPoll(let value):
            try container.encode(Kind.keyboardButtonTypeRequestPoll, forKey: .type)
            try value.encode(to: encoder)
        case .keyboardButtonTypeRequestUser(let value):
            try container.encode(Kind.keyboardButtonTypeRequestUser, forKey: .type)
            try value.encode(to: encoder)
        case .keyboardButtonTypeRequestChat(let value):
            try container.encode(Kind.keyboardButtonTypeRequestChat, forKey: .type)
            try value.encode(to: encoder)
        case .keyboardButtonTypeWebApp(let value):
            try container.encode(Kind.keyboardButtonTypeWebApp, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A button that allows the user to create and send a poll when pressed; available only in private chats
public struct KeyboardButtonTypeRequestPoll: Codable, Equatable, Hashable {

    /// If true, only polls in quiz mode must be allowed to create
    public let forceQuiz: Bool

    /// If true, only regular polls must be allowed to create
    public let forceRegular: Bool


    public init(
        forceQuiz: Bool,
        forceRegular: Bool
    ) {
        self.forceQuiz = forceQuiz
        self.forceRegular = forceRegular
    }
}

/// A button that requests a user to be shared by the current user; available only in private chats. Use the method shareUserWithBot to complete the request
public struct KeyboardButtonTypeRequestUser: Codable, Equatable, Hashable, Identifiable {

    /// Unique button identifier
    public let id: Int

    /// True, if the shared user must or must not be a bot
    public let restrictUserIsBot: Bool

    /// True, if the shared user must or must not be a Telegram Premium user
    public let restrictUserIsPremium: Bool

    /// True, if the shared user must be a bot; otherwise, the shared user must no be a bot. Ignored if restrict_user_is_bot is false
    public let userIsBot: Bool

    /// True, if the shared user must be a Telegram Premium user; otherwise, the shared user must no be a Telegram Premium user. Ignored if restrict_user_is_premium is false
    public let userIsPremium: Bool


    public init(
        id: Int,
        restrictUserIsBot: Bool,
        restrictUserIsPremium: Bool,
        userIsBot: Bool,
        userIsPremium: Bool
    ) {
        self.id = id
        self.restrictUserIsBot = restrictUserIsBot
        self.restrictUserIsPremium = restrictUserIsPremium
        self.userIsBot = userIsBot
        self.userIsPremium = userIsPremium
    }
}

/// A button that requests a chat to be shared by the current user; available only in private chats. Use the method shareChatWithBot to complete the request
public struct KeyboardButtonTypeRequestChat: Codable, Equatable, Hashable, Identifiable {

    /// Expected bot administrator rights in the chat; may be null if they aren't restricted
    public let botAdministratorRights: ChatAdministratorRights?

    /// True, if the bot must be a member of the chat; for basic group and supergroup chats only
    public let botIsMember: Bool

    /// True, if the chat must have a username; otherwise, the chat must not have a username. Ignored if restrict_chat_has_username is false
    public let chatHasUsername: Bool

    /// True, if the chat must be a channel; otherwise, a basic group or a supergroup chat is shared
    public let chatIsChannel: Bool

    /// True, if the chat must be created by the current user
    public let chatIsCreated: Bool

    /// True, if the chat must be a forum supergroup; otherwise, the chat must not be a forum supergroup. Ignored if restrict_chat_is_forum is false
    public let chatIsForum: Bool

    /// Unique button identifier
    public let id: Int

    /// True, if the chat must or must not have a username
    public let restrictChatHasUsername: Bool

    /// True, if the chat must or must not be a forum supergroup
    public let restrictChatIsForum: Bool

    /// Expected user administrator rights in the chat; may be null if they aren't restricted
    public let userAdministratorRights: ChatAdministratorRights?


    public init(
        botAdministratorRights: ChatAdministratorRights?,
        botIsMember: Bool,
        chatHasUsername: Bool,
        chatIsChannel: Bool,
        chatIsCreated: Bool,
        chatIsForum: Bool,
        id: Int,
        restrictChatHasUsername: Bool,
        restrictChatIsForum: Bool,
        userAdministratorRights: ChatAdministratorRights?
    ) {
        self.botAdministratorRights = botAdministratorRights
        self.botIsMember = botIsMember
        self.chatHasUsername = chatHasUsername
        self.chatIsChannel = chatIsChannel
        self.chatIsCreated = chatIsCreated
        self.chatIsForum = chatIsForum
        self.id = id
        self.restrictChatHasUsername = restrictChatHasUsername
        self.restrictChatIsForum = restrictChatIsForum
        self.userAdministratorRights = userAdministratorRights
    }
}

/// A button that opens a Web App by calling getWebAppUrl
public struct KeyboardButtonTypeWebApp: Codable, Equatable, Hashable {

    /// An HTTP URL to pass to getWebAppUrl
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

