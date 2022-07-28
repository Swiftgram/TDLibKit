//
//  InternalLinkType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes an internal https://t.me or tg: link, which must be processed by the application in a special way
public indirect enum InternalLinkType: Codable, Equatable {

    /// The link is a link to the active sessions section of the application. Use getActiveSessions to handle the link
    case internalLinkTypeActiveSessions

    /// The link is a link to an attachment menu bot to be opened in the specified or a chosen chat. Process given target_chat to open the chat. Then call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu. Then use getAttachmentMenuBot to receive information about the bot. If the bot isn't added to attachment menu, then user needs to confirm adding the bot to attachment menu. If user confirms adding, then use toggleBotIsAddedToAttachmentMenu to add it. If the attachment menu bot can't be used in the opened chat, show an error to the user. If the bot is added to attachment menu and can be used in the chat, then use openWebApp with the given URL
    case internalLinkTypeAttachmentMenuBot(InternalLinkTypeAttachmentMenuBot)

    /// The link contains an authentication code. Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode
    case internalLinkTypeAuthenticationCode(InternalLinkTypeAuthenticationCode)

    /// The link is a link to a background. Call searchBackground with the given background name to process the link
    case internalLinkTypeBackground(InternalLinkTypeBackground)

    /// The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot, and then call sendBotStartMessage with the given start parameter after the button is pressed
    case internalLinkTypeBotStart(InternalLinkTypeBotStart)

    /// The link is a link to a Telegram bot, which is supposed to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups, ask the current user to select a basic group or a supergroup chat to add the bot to, taking into account that bots can be added to a public supergroup only by administrators of the supergroup. If administrator rights are provided by the link, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator, check that the current user can edit its administrator rights, combine received rights with the requested administrator rights, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed administrator rights. Before call to setChatMemberStatus it may be required to upgrade the chosen basic group chat to a supergroup chat. Then if start_parameter isn't empty, call sendBotStartMessage with the given start parameter and the chosen chat, otherwise just send /start message with bot's username added to the chat.
    case internalLinkTypeBotStartInGroup(InternalLinkTypeBotStartInGroup)

    /// The link is a link to a Telegram bot, which is supposed to be added to a channel chat as an administrator. Call searchPublicChat with the given bot username and check that the user is a bot, ask the current user to select a channel chat to add the bot to as an administrator. Then call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator, check that the current user can edit its administrator rights and combine received rights with the requested administrator rights. Then show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed rights
    case internalLinkTypeBotAddToChannel(InternalLinkTypeBotAddToChannel)

    /// The link is a link to the change phone number section of the app
    case internalLinkTypeChangePhoneNumber

    /// The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link
    case internalLinkTypeChatInvite(InternalLinkTypeChatInvite)

    /// The link is a link to the filter settings section of the app
    case internalLinkTypeFilterSettings

    /// The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame
    case internalLinkTypeGame(InternalLinkTypeGame)

    /// The link is a link to an invoice. Call getPaymentForm with the given invoice name to process the link
    case internalLinkTypeInvoice(InternalLinkTypeInvoice)

    /// The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link
    case internalLinkTypeLanguagePack(InternalLinkTypeLanguagePack)

    /// The link is a link to the language settings section of the app
    case internalLinkTypeLanguageSettings

    /// The link is a link to a Telegram message. Call getMessageLinkInfo with the given URL to process the link
    case internalLinkTypeMessage(InternalLinkTypeMessage)

    /// The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field
    case internalLinkTypeMessageDraft(InternalLinkTypeMessageDraft)

    /// The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the application, otherwise ignore it
    case internalLinkTypePassportDataRequest(InternalLinkTypePassportDataRequest)

    /// The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberConfirmationCode with the given hash and phone number to process the link
    case internalLinkTypePhoneNumberConfirmation(InternalLinkTypePhoneNumberConfirmation)

    /// The link is a link to the Premium features screen of the applcation from which the user can subscribe to Telegram Premium. Call getPremiumFeatures with the given referrer to process the link
    case internalLinkTypePremiumFeatures(InternalLinkTypePremiumFeatures)

    /// The link is a link to the privacy and security settings section of the app
    case internalLinkTypePrivacyAndSecuritySettings

    /// The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy
    case internalLinkTypeProxy(InternalLinkTypeProxy)

    /// The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link
    case internalLinkTypePublicChat(InternalLinkTypePublicChat)

    /// The link can be used to login the current user on another device, but it must be scanned from QR-code using in-app camera. An alert similar to "This code can be used to allow someone to log in to your Telegram account. To confirm Telegram login, please go to Settings > Devices > Scan QR and scan the code" needs to be shown
    case internalLinkTypeQrCodeAuthentication

    /// The link is a link to application settings
    case internalLinkTypeSettings

    /// The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set
    case internalLinkTypeStickerSet(InternalLinkTypeStickerSet)

    /// The link is a link to a theme. TDLib has no theme support yet
    case internalLinkTypeTheme(InternalLinkTypeTheme)

    /// The link is a link to the theme settings section of the app
    case internalLinkTypeThemeSettings

    /// The link is an unknown tg: link. Call getDeepLinkInfo to process the link
    case internalLinkTypeUnknownDeepLink(InternalLinkTypeUnknownDeepLink)

    /// The link is a link to an unsupported proxy. An alert can be shown to the user
    case internalLinkTypeUnsupportedProxy

    /// The link is a link to a user by its phone number. Call searchUserByPhoneNumber with the given phone number to process the link
    case internalLinkTypeUserPhoneNumber(InternalLinkTypeUserPhoneNumber)

    /// The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinGroupCall with the given invite hash to process the link
    case internalLinkTypeVideoChat(InternalLinkTypeVideoChat)


    private enum Kind: String, Codable {
        case internalLinkTypeActiveSessions
        case internalLinkTypeAttachmentMenuBot
        case internalLinkTypeAuthenticationCode
        case internalLinkTypeBackground
        case internalLinkTypeBotStart
        case internalLinkTypeBotStartInGroup
        case internalLinkTypeBotAddToChannel
        case internalLinkTypeChangePhoneNumber
        case internalLinkTypeChatInvite
        case internalLinkTypeFilterSettings
        case internalLinkTypeGame
        case internalLinkTypeInvoice
        case internalLinkTypeLanguagePack
        case internalLinkTypeLanguageSettings
        case internalLinkTypeMessage
        case internalLinkTypeMessageDraft
        case internalLinkTypePassportDataRequest
        case internalLinkTypePhoneNumberConfirmation
        case internalLinkTypePremiumFeatures
        case internalLinkTypePrivacyAndSecuritySettings
        case internalLinkTypeProxy
        case internalLinkTypePublicChat
        case internalLinkTypeQrCodeAuthentication
        case internalLinkTypeSettings
        case internalLinkTypeStickerSet
        case internalLinkTypeTheme
        case internalLinkTypeThemeSettings
        case internalLinkTypeUnknownDeepLink
        case internalLinkTypeUnsupportedProxy
        case internalLinkTypeUserPhoneNumber
        case internalLinkTypeVideoChat
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .internalLinkTypeActiveSessions:
            self = .internalLinkTypeActiveSessions
        case .internalLinkTypeAttachmentMenuBot:
            let value = try InternalLinkTypeAttachmentMenuBot(from: decoder)
            self = .internalLinkTypeAttachmentMenuBot(value)
        case .internalLinkTypeAuthenticationCode:
            let value = try InternalLinkTypeAuthenticationCode(from: decoder)
            self = .internalLinkTypeAuthenticationCode(value)
        case .internalLinkTypeBackground:
            let value = try InternalLinkTypeBackground(from: decoder)
            self = .internalLinkTypeBackground(value)
        case .internalLinkTypeBotStart:
            let value = try InternalLinkTypeBotStart(from: decoder)
            self = .internalLinkTypeBotStart(value)
        case .internalLinkTypeBotStartInGroup:
            let value = try InternalLinkTypeBotStartInGroup(from: decoder)
            self = .internalLinkTypeBotStartInGroup(value)
        case .internalLinkTypeBotAddToChannel:
            let value = try InternalLinkTypeBotAddToChannel(from: decoder)
            self = .internalLinkTypeBotAddToChannel(value)
        case .internalLinkTypeChangePhoneNumber:
            self = .internalLinkTypeChangePhoneNumber
        case .internalLinkTypeChatInvite:
            let value = try InternalLinkTypeChatInvite(from: decoder)
            self = .internalLinkTypeChatInvite(value)
        case .internalLinkTypeFilterSettings:
            self = .internalLinkTypeFilterSettings
        case .internalLinkTypeGame:
            let value = try InternalLinkTypeGame(from: decoder)
            self = .internalLinkTypeGame(value)
        case .internalLinkTypeInvoice:
            let value = try InternalLinkTypeInvoice(from: decoder)
            self = .internalLinkTypeInvoice(value)
        case .internalLinkTypeLanguagePack:
            let value = try InternalLinkTypeLanguagePack(from: decoder)
            self = .internalLinkTypeLanguagePack(value)
        case .internalLinkTypeLanguageSettings:
            self = .internalLinkTypeLanguageSettings
        case .internalLinkTypeMessage:
            let value = try InternalLinkTypeMessage(from: decoder)
            self = .internalLinkTypeMessage(value)
        case .internalLinkTypeMessageDraft:
            let value = try InternalLinkTypeMessageDraft(from: decoder)
            self = .internalLinkTypeMessageDraft(value)
        case .internalLinkTypePassportDataRequest:
            let value = try InternalLinkTypePassportDataRequest(from: decoder)
            self = .internalLinkTypePassportDataRequest(value)
        case .internalLinkTypePhoneNumberConfirmation:
            let value = try InternalLinkTypePhoneNumberConfirmation(from: decoder)
            self = .internalLinkTypePhoneNumberConfirmation(value)
        case .internalLinkTypePremiumFeatures:
            let value = try InternalLinkTypePremiumFeatures(from: decoder)
            self = .internalLinkTypePremiumFeatures(value)
        case .internalLinkTypePrivacyAndSecuritySettings:
            self = .internalLinkTypePrivacyAndSecuritySettings
        case .internalLinkTypeProxy:
            let value = try InternalLinkTypeProxy(from: decoder)
            self = .internalLinkTypeProxy(value)
        case .internalLinkTypePublicChat:
            let value = try InternalLinkTypePublicChat(from: decoder)
            self = .internalLinkTypePublicChat(value)
        case .internalLinkTypeQrCodeAuthentication:
            self = .internalLinkTypeQrCodeAuthentication
        case .internalLinkTypeSettings:
            self = .internalLinkTypeSettings
        case .internalLinkTypeStickerSet:
            let value = try InternalLinkTypeStickerSet(from: decoder)
            self = .internalLinkTypeStickerSet(value)
        case .internalLinkTypeTheme:
            let value = try InternalLinkTypeTheme(from: decoder)
            self = .internalLinkTypeTheme(value)
        case .internalLinkTypeThemeSettings:
            self = .internalLinkTypeThemeSettings
        case .internalLinkTypeUnknownDeepLink:
            let value = try InternalLinkTypeUnknownDeepLink(from: decoder)
            self = .internalLinkTypeUnknownDeepLink(value)
        case .internalLinkTypeUnsupportedProxy:
            self = .internalLinkTypeUnsupportedProxy
        case .internalLinkTypeUserPhoneNumber:
            let value = try InternalLinkTypeUserPhoneNumber(from: decoder)
            self = .internalLinkTypeUserPhoneNumber(value)
        case .internalLinkTypeVideoChat:
            let value = try InternalLinkTypeVideoChat(from: decoder)
            self = .internalLinkTypeVideoChat(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .internalLinkTypeActiveSessions:
            try container.encode(Kind.internalLinkTypeActiveSessions, forKey: .type)
        case .internalLinkTypeAttachmentMenuBot(let value):
            try container.encode(Kind.internalLinkTypeAttachmentMenuBot, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeAuthenticationCode(let value):
            try container.encode(Kind.internalLinkTypeAuthenticationCode, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeBackground(let value):
            try container.encode(Kind.internalLinkTypeBackground, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeBotStart(let value):
            try container.encode(Kind.internalLinkTypeBotStart, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeBotStartInGroup(let value):
            try container.encode(Kind.internalLinkTypeBotStartInGroup, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeBotAddToChannel(let value):
            try container.encode(Kind.internalLinkTypeBotAddToChannel, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeChangePhoneNumber:
            try container.encode(Kind.internalLinkTypeChangePhoneNumber, forKey: .type)
        case .internalLinkTypeChatInvite(let value):
            try container.encode(Kind.internalLinkTypeChatInvite, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeFilterSettings:
            try container.encode(Kind.internalLinkTypeFilterSettings, forKey: .type)
        case .internalLinkTypeGame(let value):
            try container.encode(Kind.internalLinkTypeGame, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeInvoice(let value):
            try container.encode(Kind.internalLinkTypeInvoice, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeLanguagePack(let value):
            try container.encode(Kind.internalLinkTypeLanguagePack, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeLanguageSettings:
            try container.encode(Kind.internalLinkTypeLanguageSettings, forKey: .type)
        case .internalLinkTypeMessage(let value):
            try container.encode(Kind.internalLinkTypeMessage, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeMessageDraft(let value):
            try container.encode(Kind.internalLinkTypeMessageDraft, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypePassportDataRequest(let value):
            try container.encode(Kind.internalLinkTypePassportDataRequest, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypePhoneNumberConfirmation(let value):
            try container.encode(Kind.internalLinkTypePhoneNumberConfirmation, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypePremiumFeatures(let value):
            try container.encode(Kind.internalLinkTypePremiumFeatures, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypePrivacyAndSecuritySettings:
            try container.encode(Kind.internalLinkTypePrivacyAndSecuritySettings, forKey: .type)
        case .internalLinkTypeProxy(let value):
            try container.encode(Kind.internalLinkTypeProxy, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypePublicChat(let value):
            try container.encode(Kind.internalLinkTypePublicChat, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeQrCodeAuthentication:
            try container.encode(Kind.internalLinkTypeQrCodeAuthentication, forKey: .type)
        case .internalLinkTypeSettings:
            try container.encode(Kind.internalLinkTypeSettings, forKey: .type)
        case .internalLinkTypeStickerSet(let value):
            try container.encode(Kind.internalLinkTypeStickerSet, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeTheme(let value):
            try container.encode(Kind.internalLinkTypeTheme, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeThemeSettings:
            try container.encode(Kind.internalLinkTypeThemeSettings, forKey: .type)
        case .internalLinkTypeUnknownDeepLink(let value):
            try container.encode(Kind.internalLinkTypeUnknownDeepLink, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeUnsupportedProxy:
            try container.encode(Kind.internalLinkTypeUnsupportedProxy, forKey: .type)
        case .internalLinkTypeUserPhoneNumber(let value):
            try container.encode(Kind.internalLinkTypeUserPhoneNumber, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeVideoChat(let value):
            try container.encode(Kind.internalLinkTypeVideoChat, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The link is a link to an attachment menu bot to be opened in the specified or a chosen chat. Process given target_chat to open the chat. Then call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu. Then use getAttachmentMenuBot to receive information about the bot. If the bot isn't added to attachment menu, then user needs to confirm adding the bot to attachment menu. If user confirms adding, then use toggleBotIsAddedToAttachmentMenu to add it. If the attachment menu bot can't be used in the opened chat, show an error to the user. If the bot is added to attachment menu and can be used in the chat, then use openWebApp with the given URL
public struct InternalLinkTypeAttachmentMenuBot: Codable, Equatable {

    /// Username of the bot
    public let botUsername: String

    /// Target chat to be opened
    public let targetChat: TargetChat

    /// URL to be passed to openWebApp
    public let url: String


    public init(
        botUsername: String,
        targetChat: TargetChat,
        url: String
    ) {
        self.botUsername = botUsername
        self.targetChat = targetChat
        self.url = url
    }
}

/// The link contains an authentication code. Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode
public struct InternalLinkTypeAuthenticationCode: Codable, Equatable {

    /// The authentication code
    public let code: String


    public init(code: String) {
        self.code = code
    }
}

/// The link is a link to a background. Call searchBackground with the given background name to process the link
public struct InternalLinkTypeBackground: Codable, Equatable {

    /// Name of the background
    public let backgroundName: String


    public init(backgroundName: String) {
        self.backgroundName = backgroundName
    }
}

/// The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot, and then call sendBotStartMessage with the given start parameter after the button is pressed
public struct InternalLinkTypeBotStart: Codable, Equatable {

    /// True, if sendBotStartMessage must be called automatically without showing the START button
    public let autostart: Bool

    /// Username of the bot
    public let botUsername: String

    /// The parameter to be passed to sendBotStartMessage
    public let startParameter: String


    public init(
        autostart: Bool,
        botUsername: String,
        startParameter: String
    ) {
        self.autostart = autostart
        self.botUsername = botUsername
        self.startParameter = startParameter
    }
}

/// The link is a link to a Telegram bot, which is supposed to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups, ask the current user to select a basic group or a supergroup chat to add the bot to, taking into account that bots can be added to a public supergroup only by administrators of the supergroup. If administrator rights are provided by the link, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator, check that the current user can edit its administrator rights, combine received rights with the requested administrator rights, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed administrator rights. Before call to setChatMemberStatus it may be required to upgrade the chosen basic group chat to a supergroup chat. Then if start_parameter isn't empty, call sendBotStartMessage with the given start parameter and the chosen chat, otherwise just send /start message with bot's username added to the chat.
public struct InternalLinkTypeBotStartInGroup: Codable, Equatable {

    /// Expected administrator rights for the bot; may be null
    public let administratorRights: ChatAdministratorRights?

    /// Username of the bot
    public let botUsername: String

    /// The parameter to be passed to sendBotStartMessage
    public let startParameter: String


    public init(
        administratorRights: ChatAdministratorRights?,
        botUsername: String,
        startParameter: String
    ) {
        self.administratorRights = administratorRights
        self.botUsername = botUsername
        self.startParameter = startParameter
    }
}

/// The link is a link to a Telegram bot, which is supposed to be added to a channel chat as an administrator. Call searchPublicChat with the given bot username and check that the user is a bot, ask the current user to select a channel chat to add the bot to as an administrator. Then call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator, check that the current user can edit its administrator rights and combine received rights with the requested administrator rights. Then show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed rights
public struct InternalLinkTypeBotAddToChannel: Codable, Equatable {

    /// Expected administrator rights for the bot
    public let administratorRights: ChatAdministratorRights

    /// Username of the bot
    public let botUsername: String


    public init(
        administratorRights: ChatAdministratorRights,
        botUsername: String
    ) {
        self.administratorRights = administratorRights
        self.botUsername = botUsername
    }
}

/// The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link
public struct InternalLinkTypeChatInvite: Codable, Equatable {

    /// Internal representation of the invite link
    public let inviteLink: String


    public init(inviteLink: String) {
        self.inviteLink = inviteLink
    }
}

/// The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame
public struct InternalLinkTypeGame: Codable, Equatable {

    /// Username of the bot that owns the game
    public let botUsername: String

    /// Short name of the game
    public let gameShortName: String


    public init(
        botUsername: String,
        gameShortName: String
    ) {
        self.botUsername = botUsername
        self.gameShortName = gameShortName
    }
}

/// The link is a link to an invoice. Call getPaymentForm with the given invoice name to process the link
public struct InternalLinkTypeInvoice: Codable, Equatable {

    /// Name of the invoice
    public let invoiceName: String


    public init(invoiceName: String) {
        self.invoiceName = invoiceName
    }
}

/// The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link
public struct InternalLinkTypeLanguagePack: Codable, Equatable {

    /// Language pack identifier
    public let languagePackId: String


    public init(languagePackId: String) {
        self.languagePackId = languagePackId
    }
}

/// The link is a link to a Telegram message. Call getMessageLinkInfo with the given URL to process the link
public struct InternalLinkTypeMessage: Codable, Equatable {

    /// URL to be passed to getMessageLinkInfo
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

/// The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field
public struct InternalLinkTypeMessageDraft: Codable, Equatable {

    /// True, if the first line of the text contains a link. If true, the input field needs to be focused and the text after the link must be selected
    public let containsLink: Bool

    /// Message draft text
    public let text: FormattedText


    public init(
        containsLink: Bool,
        text: FormattedText
    ) {
        self.containsLink = containsLink
        self.text = text
    }
}

/// The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the application, otherwise ignore it
public struct InternalLinkTypePassportDataRequest: Codable, Equatable {

    /// User identifier of the service's bot
    public let botUserId: Int64

    /// An HTTP URL to open once the request is finished or canceled with the parameter tg_passport=success or tg_passport=cancel respectively. If empty, then the link tgbot{bot_user_id}://passport/success or tgbot{bot_user_id}://passport/cancel needs to be opened instead
    public let callbackUrl: String

    /// Unique request identifier provided by the service
    public let nonce: String

    /// Service's public key
    public let publicKey: String

    /// Telegram Passport element types requested by the service
    public let scope: String


    public init(
        botUserId: Int64,
        callbackUrl: String,
        nonce: String,
        publicKey: String,
        scope: String
    ) {
        self.botUserId = botUserId
        self.callbackUrl = callbackUrl
        self.nonce = nonce
        self.publicKey = publicKey
        self.scope = scope
    }
}

/// The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberConfirmationCode with the given hash and phone number to process the link
public struct InternalLinkTypePhoneNumberConfirmation: Codable, Equatable {

    /// Hash value from the link
    public let hash: String

    /// Phone number value from the link
    public let phoneNumber: String


    public init(
        hash: String,
        phoneNumber: String
    ) {
        self.hash = hash
        self.phoneNumber = phoneNumber
    }
}

/// The link is a link to the Premium features screen of the applcation from which the user can subscribe to Telegram Premium. Call getPremiumFeatures with the given referrer to process the link
public struct InternalLinkTypePremiumFeatures: Codable, Equatable {

    /// Referrer specified in the link
    public let referrer: String


    public init(referrer: String) {
        self.referrer = referrer
    }
}

/// The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy
public struct InternalLinkTypeProxy: Codable, Equatable {

    /// Proxy server port
    public let port: Int

    /// Proxy server IP address
    public let server: String

    /// Type of the proxy
    public let type: ProxyType


    public init(
        port: Int,
        server: String,
        type: ProxyType
    ) {
        self.port = port
        self.server = server
        self.type = type
    }
}

/// The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link
public struct InternalLinkTypePublicChat: Codable, Equatable {

    /// Username of the chat
    public let chatUsername: String


    public init(chatUsername: String) {
        self.chatUsername = chatUsername
    }
}

/// The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set
public struct InternalLinkTypeStickerSet: Codable, Equatable {

    /// Name of the sticker set
    public let stickerSetName: String


    public init(stickerSetName: String) {
        self.stickerSetName = stickerSetName
    }
}

/// The link is a link to a theme. TDLib has no theme support yet
public struct InternalLinkTypeTheme: Codable, Equatable {

    /// Name of the theme
    public let themeName: String


    public init(themeName: String) {
        self.themeName = themeName
    }
}

/// The link is an unknown tg: link. Call getDeepLinkInfo to process the link
public struct InternalLinkTypeUnknownDeepLink: Codable, Equatable {

    /// Link to be passed to getDeepLinkInfo
    public let link: String


    public init(link: String) {
        self.link = link
    }
}

/// The link is a link to a user by its phone number. Call searchUserByPhoneNumber with the given phone number to process the link
public struct InternalLinkTypeUserPhoneNumber: Codable, Equatable {

    /// Phone number of the user
    public let phoneNumber: String


    public init(phoneNumber: String) {
        self.phoneNumber = phoneNumber
    }
}

/// The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinGroupCall with the given invite hash to process the link
public struct InternalLinkTypeVideoChat: Codable, Equatable {

    /// Username of the chat with the video chat
    public let chatUsername: String

    /// If non-empty, invite hash to be used to join the video chat without being muted by administrators
    public let inviteHash: String

    /// True, if the video chat is expected to be a live stream in a channel or a broadcast group
    public let isLiveStream: Bool


    public init(
        chatUsername: String,
        inviteHash: String,
        isLiveStream: Bool
    ) {
        self.chatUsername = chatUsername
        self.inviteHash = inviteHash
        self.isLiveStream = isLiveStream
    }
}

