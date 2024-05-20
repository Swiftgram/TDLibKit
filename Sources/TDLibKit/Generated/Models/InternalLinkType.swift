//
//  InternalLinkType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes an internal https://t.me or tg: link, which must be processed by the application in a special way
/// This Swift enum is recursive.
public indirect enum InternalLinkType: Codable, Equatable, Hashable {

    /// The link is a link to the Devices section of the application. Use getActiveSessions to get the list of active sessions and show them to the user
    case internalLinkTypeActiveSessions

    /// The link is a link to an attachment menu bot to be opened in the specified or a chosen chat. Process given target_chat to open the chat. Then, call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu. Then, use getAttachmentMenuBot to receive information about the bot. If the bot isn't added to attachment menu, then show a disclaimer about Mini Apps being a third-party apps, ask the user to accept their Terms of service and confirm adding the bot to side and attachment menu. If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot. If the attachment menu bot can't be used in the opened chat, show an error to the user. If the bot is added to attachment menu and can be used in the chat, then use openWebApp with the given URL
    case internalLinkTypeAttachmentMenuBot(InternalLinkTypeAttachmentMenuBot)

    /// The link contains an authentication code. Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode
    case internalLinkTypeAuthenticationCode(InternalLinkTypeAuthenticationCode)

    /// The link is a link to a background. Call searchBackground with the given background name to process the link If background is found and the user wants to apply it, then call setDefaultBackground
    case internalLinkTypeBackground(InternalLinkTypeBackground)

    /// The link is a link to a Telegram bot, which is supposed to be added to a channel chat as an administrator. Call searchPublicChat with the given bot username and check that the user is a bot, ask the current user to select a channel chat to add the bot to as an administrator. Then, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator, check that the current user can edit its administrator rights and combine received rights with the requested administrator rights. Then, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed rights
    case internalLinkTypeBotAddToChannel(InternalLinkTypeBotAddToChannel)

    /// The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot, and then call sendBotStartMessage with the given start parameter after the button is pressed
    case internalLinkTypeBotStart(InternalLinkTypeBotStart)

    /// The link is a link to a Telegram bot, which is supposed to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups, ask the current user to select a basic group or a supergroup chat to add the bot to, taking into account that bots can be added to a public supergroup only by administrators of the supergroup. If administrator rights are provided by the link, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator, check that the current user can edit its administrator rights, combine received rights with the requested administrator rights, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed administrator rights. Before call to setChatMemberStatus it may be required to upgrade the chosen basic group chat to a supergroup chat. Then, if start_parameter isn't empty, call sendBotStartMessage with the given start parameter and the chosen chat; otherwise, just send /start message with bot's username added to the chat.
    case internalLinkTypeBotStartInGroup(InternalLinkTypeBotStartInGroup)

    /// The link is a link to a business chat. Use getBusinessChatLinkInfo with the provided link name to get information about the link, then open received private chat and replace chat draft with the provided text
    case internalLinkTypeBusinessChat(InternalLinkTypeBusinessChat)

    /// The link is a link to the change phone number section of the app
    case internalLinkTypeChangePhoneNumber

    /// The link is a link to boost a Telegram chat. Call getChatBoostLinkInfo with the given URL to process the link. If the chat is found, then call getChatBoostStatus and getAvailableChatBoostSlots to get the current boost status and check whether the chat can be boosted. If the user wants to boost the chat and the chat can be boosted, then call boostChat
    case internalLinkTypeChatBoost(InternalLinkTypeChatBoost)

    /// The link is an invite link to a chat folder. Call checkChatFolderInviteLink with the given invite link to process the link. If the link is valid and the user wants to join the chat folder, then call addChatFolderByInviteLink
    case internalLinkTypeChatFolderInvite(InternalLinkTypeChatFolderInvite)

    /// The link is a link to the folder section of the app settings
    case internalLinkTypeChatFolderSettings

    /// The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link. If the link is valid and the user wants to join the chat, then call joinChatByInviteLink
    case internalLinkTypeChatInvite(InternalLinkTypeChatInvite)

    /// The link is a link to the default message auto-delete timer settings section of the app settings
    case internalLinkTypeDefaultMessageAutoDeleteTimerSettings

    /// The link is a link to the edit profile section of the app settings
    case internalLinkTypeEditProfileSettings

    /// The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame
    case internalLinkTypeGame(InternalLinkTypeGame)

    /// The link must be opened in an Instant View. Call getWebPageInstantView with the given URL to process the link. If Instant View is found, then show it, otherwise, open the fallback URL in an external browser
    case internalLinkTypeInstantView(InternalLinkTypeInstantView)

    /// The link is a link to an invoice. Call getPaymentForm with the given invoice name to process the link
    case internalLinkTypeInvoice(InternalLinkTypeInvoice)

    /// The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link. If the language pack is found and the user wants to apply it, then call setOption for the option "language_pack_id"
    case internalLinkTypeLanguagePack(InternalLinkTypeLanguagePack)

    /// The link is a link to the language section of the app settings
    case internalLinkTypeLanguageSettings

    /// The link is a link to a Telegram message or a forum topic. Call getMessageLinkInfo with the given URL to process the link, and then open received forum topic or chat and show the message there
    case internalLinkTypeMessage(InternalLinkTypeMessage)

    /// The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field
    case internalLinkTypeMessageDraft(InternalLinkTypeMessageDraft)

    /// The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the application; otherwise, ignore it
    case internalLinkTypePassportDataRequest(InternalLinkTypePassportDataRequest)

    /// The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberCode with the given phone number and with phoneNumberCodeTypeConfirmOwnership with the given hash to process the link. If succeeded, call checkPhoneNumberCode to check entered by the user code, or resendPhoneNumberCode to resend it
    case internalLinkTypePhoneNumberConfirmation(InternalLinkTypePhoneNumberConfirmation)

    /// The link is a link to the Premium features screen of the application from which the user can subscribe to Telegram Premium. Call getPremiumFeatures with the given referrer to process the link
    case internalLinkTypePremiumFeatures(InternalLinkTypePremiumFeatures)

    /// The link is a link to the screen for gifting Telegram Premium subscriptions to friends via inputInvoiceTelegram payments or in-store purchases
    case internalLinkTypePremiumGift(InternalLinkTypePremiumGift)

    /// The link is a link with a Telegram Premium gift code. Call checkPremiumGiftCode with the given code to process the link. If the code is valid and the user wants to apply it, then call applyPremiumGiftCode
    case internalLinkTypePremiumGiftCode(InternalLinkTypePremiumGiftCode)

    /// The link is a link to the privacy and security section of the app settings
    case internalLinkTypePrivacyAndSecuritySettings

    /// The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy
    case internalLinkTypeProxy(InternalLinkTypeProxy)

    /// The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link If the chat is found, open its profile information screen or the chat itself. If draft text isn't empty and the chat is a private chat, then put the draft text in the input field
    case internalLinkTypePublicChat(InternalLinkTypePublicChat)

    /// The link can be used to login the current user on another device, but it must be scanned from QR-code using in-app camera. An alert similar to "This code can be used to allow someone to log in to your Telegram account. To confirm Telegram login, please go to Settings > Devices > Scan QR and scan the code" needs to be shown
    case internalLinkTypeQrCodeAuthentication

    /// The link forces restore of App Store purchases when opened. For official iOS application only
    case internalLinkTypeRestorePurchases

    /// The link is a link to application settings
    case internalLinkTypeSettings

    /// The link is a link to a bot, which can be installed to the side menu. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu. Then, use getAttachmentMenuBot to receive information about the bot. If the bot isn't added to side menu, then show a disclaimer about Mini Apps being a third-party apps, ask the user to accept their Terms of service and confirm adding the bot to side and attachment menu. If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot. If the bot is added to side menu, then use getWebAppUrl with the given URL and open the returned URL as a Web App
    case internalLinkTypeSideMenuBot(InternalLinkTypeSideMenuBot)

    /// The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set. If the sticker set is found and the user wants to add it, then call changeStickerSet
    case internalLinkTypeStickerSet(InternalLinkTypeStickerSet)

    /// The link is a link to a story. Call searchPublicChat with the given sender username, then call getStory with the received chat identifier and the given story identifier, then show the story if received
    case internalLinkTypeStory(InternalLinkTypeStory)

    /// The link is a link to a theme. TDLib has no theme support yet
    case internalLinkTypeTheme(InternalLinkTypeTheme)

    /// The link is a link to the theme section of the app settings
    case internalLinkTypeThemeSettings

    /// The link is an unknown tg: link. Call getDeepLinkInfo to process the link
    case internalLinkTypeUnknownDeepLink(InternalLinkTypeUnknownDeepLink)

    /// The link is a link to an unsupported proxy. An alert can be shown to the user
    case internalLinkTypeUnsupportedProxy

    /// The link is a link to a user by its phone number. Call searchUserByPhoneNumber with the given phone number to process the link. If the user is found, then call createPrivateChat and open the chat. If draft text isn't empty, then put the draft text in the input field
    case internalLinkTypeUserPhoneNumber(InternalLinkTypeUserPhoneNumber)

    /// The link is a link to a user by a temporary token. Call searchUserByToken with the given token to process the link. If the user is found, then call createPrivateChat and open the chat
    case internalLinkTypeUserToken(InternalLinkTypeUserToken)

    /// The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinGroupCall with the given invite hash to process the link
    case internalLinkTypeVideoChat(InternalLinkTypeVideoChat)

    /// The link is a link to a Web App. Call searchPublicChat with the given bot username, check that the user is a bot, then call searchWebApp with the received bot and the given web_app_short_name. Process received foundWebApp by showing a confirmation dialog if needed. If the bot can be added to attachment or side menu, but isn't added yet, then show a disclaimer about Mini Apps being a third-party apps instead of the dialog and ask the user to accept their Terms of service. If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot. Then, call getWebAppLinkUrl and open the returned URL as a Web App
    case internalLinkTypeWebApp(InternalLinkTypeWebApp)


    private enum Kind: String, Codable {
        case internalLinkTypeActiveSessions
        case internalLinkTypeAttachmentMenuBot
        case internalLinkTypeAuthenticationCode
        case internalLinkTypeBackground
        case internalLinkTypeBotAddToChannel
        case internalLinkTypeBotStart
        case internalLinkTypeBotStartInGroup
        case internalLinkTypeBusinessChat
        case internalLinkTypeChangePhoneNumber
        case internalLinkTypeChatBoost
        case internalLinkTypeChatFolderInvite
        case internalLinkTypeChatFolderSettings
        case internalLinkTypeChatInvite
        case internalLinkTypeDefaultMessageAutoDeleteTimerSettings
        case internalLinkTypeEditProfileSettings
        case internalLinkTypeGame
        case internalLinkTypeInstantView
        case internalLinkTypeInvoice
        case internalLinkTypeLanguagePack
        case internalLinkTypeLanguageSettings
        case internalLinkTypeMessage
        case internalLinkTypeMessageDraft
        case internalLinkTypePassportDataRequest
        case internalLinkTypePhoneNumberConfirmation
        case internalLinkTypePremiumFeatures
        case internalLinkTypePremiumGift
        case internalLinkTypePremiumGiftCode
        case internalLinkTypePrivacyAndSecuritySettings
        case internalLinkTypeProxy
        case internalLinkTypePublicChat
        case internalLinkTypeQrCodeAuthentication
        case internalLinkTypeRestorePurchases
        case internalLinkTypeSettings
        case internalLinkTypeSideMenuBot
        case internalLinkTypeStickerSet
        case internalLinkTypeStory
        case internalLinkTypeTheme
        case internalLinkTypeThemeSettings
        case internalLinkTypeUnknownDeepLink
        case internalLinkTypeUnsupportedProxy
        case internalLinkTypeUserPhoneNumber
        case internalLinkTypeUserToken
        case internalLinkTypeVideoChat
        case internalLinkTypeWebApp
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
        case .internalLinkTypeBotAddToChannel:
            let value = try InternalLinkTypeBotAddToChannel(from: decoder)
            self = .internalLinkTypeBotAddToChannel(value)
        case .internalLinkTypeBotStart:
            let value = try InternalLinkTypeBotStart(from: decoder)
            self = .internalLinkTypeBotStart(value)
        case .internalLinkTypeBotStartInGroup:
            let value = try InternalLinkTypeBotStartInGroup(from: decoder)
            self = .internalLinkTypeBotStartInGroup(value)
        case .internalLinkTypeBusinessChat:
            let value = try InternalLinkTypeBusinessChat(from: decoder)
            self = .internalLinkTypeBusinessChat(value)
        case .internalLinkTypeChangePhoneNumber:
            self = .internalLinkTypeChangePhoneNumber
        case .internalLinkTypeChatBoost:
            let value = try InternalLinkTypeChatBoost(from: decoder)
            self = .internalLinkTypeChatBoost(value)
        case .internalLinkTypeChatFolderInvite:
            let value = try InternalLinkTypeChatFolderInvite(from: decoder)
            self = .internalLinkTypeChatFolderInvite(value)
        case .internalLinkTypeChatFolderSettings:
            self = .internalLinkTypeChatFolderSettings
        case .internalLinkTypeChatInvite:
            let value = try InternalLinkTypeChatInvite(from: decoder)
            self = .internalLinkTypeChatInvite(value)
        case .internalLinkTypeDefaultMessageAutoDeleteTimerSettings:
            self = .internalLinkTypeDefaultMessageAutoDeleteTimerSettings
        case .internalLinkTypeEditProfileSettings:
            self = .internalLinkTypeEditProfileSettings
        case .internalLinkTypeGame:
            let value = try InternalLinkTypeGame(from: decoder)
            self = .internalLinkTypeGame(value)
        case .internalLinkTypeInstantView:
            let value = try InternalLinkTypeInstantView(from: decoder)
            self = .internalLinkTypeInstantView(value)
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
        case .internalLinkTypePremiumGift:
            let value = try InternalLinkTypePremiumGift(from: decoder)
            self = .internalLinkTypePremiumGift(value)
        case .internalLinkTypePremiumGiftCode:
            let value = try InternalLinkTypePremiumGiftCode(from: decoder)
            self = .internalLinkTypePremiumGiftCode(value)
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
        case .internalLinkTypeRestorePurchases:
            self = .internalLinkTypeRestorePurchases
        case .internalLinkTypeSettings:
            self = .internalLinkTypeSettings
        case .internalLinkTypeSideMenuBot:
            let value = try InternalLinkTypeSideMenuBot(from: decoder)
            self = .internalLinkTypeSideMenuBot(value)
        case .internalLinkTypeStickerSet:
            let value = try InternalLinkTypeStickerSet(from: decoder)
            self = .internalLinkTypeStickerSet(value)
        case .internalLinkTypeStory:
            let value = try InternalLinkTypeStory(from: decoder)
            self = .internalLinkTypeStory(value)
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
        case .internalLinkTypeUserToken:
            let value = try InternalLinkTypeUserToken(from: decoder)
            self = .internalLinkTypeUserToken(value)
        case .internalLinkTypeVideoChat:
            let value = try InternalLinkTypeVideoChat(from: decoder)
            self = .internalLinkTypeVideoChat(value)
        case .internalLinkTypeWebApp:
            let value = try InternalLinkTypeWebApp(from: decoder)
            self = .internalLinkTypeWebApp(value)
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
        case .internalLinkTypeBotAddToChannel(let value):
            try container.encode(Kind.internalLinkTypeBotAddToChannel, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeBotStart(let value):
            try container.encode(Kind.internalLinkTypeBotStart, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeBotStartInGroup(let value):
            try container.encode(Kind.internalLinkTypeBotStartInGroup, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeBusinessChat(let value):
            try container.encode(Kind.internalLinkTypeBusinessChat, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeChangePhoneNumber:
            try container.encode(Kind.internalLinkTypeChangePhoneNumber, forKey: .type)
        case .internalLinkTypeChatBoost(let value):
            try container.encode(Kind.internalLinkTypeChatBoost, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeChatFolderInvite(let value):
            try container.encode(Kind.internalLinkTypeChatFolderInvite, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeChatFolderSettings:
            try container.encode(Kind.internalLinkTypeChatFolderSettings, forKey: .type)
        case .internalLinkTypeChatInvite(let value):
            try container.encode(Kind.internalLinkTypeChatInvite, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeDefaultMessageAutoDeleteTimerSettings:
            try container.encode(Kind.internalLinkTypeDefaultMessageAutoDeleteTimerSettings, forKey: .type)
        case .internalLinkTypeEditProfileSettings:
            try container.encode(Kind.internalLinkTypeEditProfileSettings, forKey: .type)
        case .internalLinkTypeGame(let value):
            try container.encode(Kind.internalLinkTypeGame, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeInstantView(let value):
            try container.encode(Kind.internalLinkTypeInstantView, forKey: .type)
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
        case .internalLinkTypePremiumGift(let value):
            try container.encode(Kind.internalLinkTypePremiumGift, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypePremiumGiftCode(let value):
            try container.encode(Kind.internalLinkTypePremiumGiftCode, forKey: .type)
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
        case .internalLinkTypeRestorePurchases:
            try container.encode(Kind.internalLinkTypeRestorePurchases, forKey: .type)
        case .internalLinkTypeSettings:
            try container.encode(Kind.internalLinkTypeSettings, forKey: .type)
        case .internalLinkTypeSideMenuBot(let value):
            try container.encode(Kind.internalLinkTypeSideMenuBot, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeStickerSet(let value):
            try container.encode(Kind.internalLinkTypeStickerSet, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeStory(let value):
            try container.encode(Kind.internalLinkTypeStory, forKey: .type)
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
        case .internalLinkTypeUserToken(let value):
            try container.encode(Kind.internalLinkTypeUserToken, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeVideoChat(let value):
            try container.encode(Kind.internalLinkTypeVideoChat, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeWebApp(let value):
            try container.encode(Kind.internalLinkTypeWebApp, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The link is a link to an attachment menu bot to be opened in the specified or a chosen chat. Process given target_chat to open the chat. Then, call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu. Then, use getAttachmentMenuBot to receive information about the bot. If the bot isn't added to attachment menu, then show a disclaimer about Mini Apps being a third-party apps, ask the user to accept their Terms of service and confirm adding the bot to side and attachment menu. If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot. If the attachment menu bot can't be used in the opened chat, show an error to the user. If the bot is added to attachment menu and can be used in the chat, then use openWebApp with the given URL
public struct InternalLinkTypeAttachmentMenuBot: Codable, Equatable, Hashable {

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
public struct InternalLinkTypeAuthenticationCode: Codable, Equatable, Hashable {

    /// The authentication code
    public let code: String


    public init(code: String) {
        self.code = code
    }
}

/// The link is a link to a background. Call searchBackground with the given background name to process the link If background is found and the user wants to apply it, then call setDefaultBackground
public struct InternalLinkTypeBackground: Codable, Equatable, Hashable {

    /// Name of the background
    public let backgroundName: String


    public init(backgroundName: String) {
        self.backgroundName = backgroundName
    }
}

/// The link is a link to a Telegram bot, which is supposed to be added to a channel chat as an administrator. Call searchPublicChat with the given bot username and check that the user is a bot, ask the current user to select a channel chat to add the bot to as an administrator. Then, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator, check that the current user can edit its administrator rights and combine received rights with the requested administrator rights. Then, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed rights
public struct InternalLinkTypeBotAddToChannel: Codable, Equatable, Hashable {

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

/// The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot, and then call sendBotStartMessage with the given start parameter after the button is pressed
public struct InternalLinkTypeBotStart: Codable, Equatable, Hashable {

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

/// The link is a link to a Telegram bot, which is supposed to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups, ask the current user to select a basic group or a supergroup chat to add the bot to, taking into account that bots can be added to a public supergroup only by administrators of the supergroup. If administrator rights are provided by the link, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator, check that the current user can edit its administrator rights, combine received rights with the requested administrator rights, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed administrator rights. Before call to setChatMemberStatus it may be required to upgrade the chosen basic group chat to a supergroup chat. Then, if start_parameter isn't empty, call sendBotStartMessage with the given start parameter and the chosen chat; otherwise, just send /start message with bot's username added to the chat.
public struct InternalLinkTypeBotStartInGroup: Codable, Equatable, Hashable {

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

/// The link is a link to a business chat. Use getBusinessChatLinkInfo with the provided link name to get information about the link, then open received private chat and replace chat draft with the provided text
public struct InternalLinkTypeBusinessChat: Codable, Equatable, Hashable {

    /// Name of the link
    public let linkName: String


    public init(linkName: String) {
        self.linkName = linkName
    }
}

/// The link is a link to boost a Telegram chat. Call getChatBoostLinkInfo with the given URL to process the link. If the chat is found, then call getChatBoostStatus and getAvailableChatBoostSlots to get the current boost status and check whether the chat can be boosted. If the user wants to boost the chat and the chat can be boosted, then call boostChat
public struct InternalLinkTypeChatBoost: Codable, Equatable, Hashable {

    /// URL to be passed to getChatBoostLinkInfo
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

/// The link is an invite link to a chat folder. Call checkChatFolderInviteLink with the given invite link to process the link. If the link is valid and the user wants to join the chat folder, then call addChatFolderByInviteLink
public struct InternalLinkTypeChatFolderInvite: Codable, Equatable, Hashable {

    /// Internal representation of the invite link
    public let inviteLink: String


    public init(inviteLink: String) {
        self.inviteLink = inviteLink
    }
}

/// The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link. If the link is valid and the user wants to join the chat, then call joinChatByInviteLink
public struct InternalLinkTypeChatInvite: Codable, Equatable, Hashable {

    /// Internal representation of the invite link
    public let inviteLink: String


    public init(inviteLink: String) {
        self.inviteLink = inviteLink
    }
}

/// The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame
public struct InternalLinkTypeGame: Codable, Equatable, Hashable {

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

/// The link must be opened in an Instant View. Call getWebPageInstantView with the given URL to process the link. If Instant View is found, then show it, otherwise, open the fallback URL in an external browser
public struct InternalLinkTypeInstantView: Codable, Equatable, Hashable {

    /// An URL to open if getWebPageInstantView fails
    public let fallbackUrl: String

    /// URL to be passed to getWebPageInstantView
    public let url: String


    public init(
        fallbackUrl: String,
        url: String
    ) {
        self.fallbackUrl = fallbackUrl
        self.url = url
    }
}

/// The link is a link to an invoice. Call getPaymentForm with the given invoice name to process the link
public struct InternalLinkTypeInvoice: Codable, Equatable, Hashable {

    /// Name of the invoice
    public let invoiceName: String


    public init(invoiceName: String) {
        self.invoiceName = invoiceName
    }
}

/// The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link. If the language pack is found and the user wants to apply it, then call setOption for the option "language_pack_id"
public struct InternalLinkTypeLanguagePack: Codable, Equatable, Hashable {

    /// Language pack identifier
    public let languagePackId: String


    public init(languagePackId: String) {
        self.languagePackId = languagePackId
    }
}

/// The link is a link to a Telegram message or a forum topic. Call getMessageLinkInfo with the given URL to process the link, and then open received forum topic or chat and show the message there
public struct InternalLinkTypeMessage: Codable, Equatable, Hashable {

    /// URL to be passed to getMessageLinkInfo
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

/// The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field
public struct InternalLinkTypeMessageDraft: Codable, Equatable, Hashable {

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

/// The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the application; otherwise, ignore it
public struct InternalLinkTypePassportDataRequest: Codable, Equatable, Hashable {

    /// User identifier of the service's bot; the corresponding user may be unknown yet
    public let botUserId: Int64

    /// An HTTP URL to open once the request is finished, canceled, or failed with the parameters tg_passport=success, tg_passport=cancel, or tg_passport=error&error=... respectively. If empty, then onActivityResult method must be used to return response on Android, or the link tgbot{bot_user_id}://passport/success or tgbot{bot_user_id}://passport/cancel must be opened otherwise
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

/// The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberCode with the given phone number and with phoneNumberCodeTypeConfirmOwnership with the given hash to process the link. If succeeded, call checkPhoneNumberCode to check entered by the user code, or resendPhoneNumberCode to resend it
public struct InternalLinkTypePhoneNumberConfirmation: Codable, Equatable, Hashable {

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

/// The link is a link to the Premium features screen of the application from which the user can subscribe to Telegram Premium. Call getPremiumFeatures with the given referrer to process the link
public struct InternalLinkTypePremiumFeatures: Codable, Equatable, Hashable {

    /// Referrer specified in the link
    public let referrer: String


    public init(referrer: String) {
        self.referrer = referrer
    }
}

/// The link is a link to the screen for gifting Telegram Premium subscriptions to friends via inputInvoiceTelegram payments or in-store purchases
public struct InternalLinkTypePremiumGift: Codable, Equatable, Hashable {

    /// Referrer specified in the link
    public let referrer: String


    public init(referrer: String) {
        self.referrer = referrer
    }
}

/// The link is a link with a Telegram Premium gift code. Call checkPremiumGiftCode with the given code to process the link. If the code is valid and the user wants to apply it, then call applyPremiumGiftCode
public struct InternalLinkTypePremiumGiftCode: Codable, Equatable, Hashable {

    /// The Telegram Premium gift code
    public let code: String


    public init(code: String) {
        self.code = code
    }
}

/// The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy
public struct InternalLinkTypeProxy: Codable, Equatable, Hashable {

    /// Proxy server port
    public let port: Int

    /// Proxy server domain or IP address
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

/// The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link If the chat is found, open its profile information screen or the chat itself. If draft text isn't empty and the chat is a private chat, then put the draft text in the input field
public struct InternalLinkTypePublicChat: Codable, Equatable, Hashable {

    /// Username of the chat
    public let chatUsername: String

    /// Draft text for message to send in the chat
    public let draftText: String


    public init(
        chatUsername: String,
        draftText: String
    ) {
        self.chatUsername = chatUsername
        self.draftText = draftText
    }
}

/// The link is a link to a bot, which can be installed to the side menu. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu. Then, use getAttachmentMenuBot to receive information about the bot. If the bot isn't added to side menu, then show a disclaimer about Mini Apps being a third-party apps, ask the user to accept their Terms of service and confirm adding the bot to side and attachment menu. If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot. If the bot is added to side menu, then use getWebAppUrl with the given URL and open the returned URL as a Web App
public struct InternalLinkTypeSideMenuBot: Codable, Equatable, Hashable {

    /// Username of the bot
    public let botUsername: String

    /// URL to be passed to getWebAppUrl
    public let url: String


    public init(
        botUsername: String,
        url: String
    ) {
        self.botUsername = botUsername
        self.url = url
    }
}

/// The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set. If the sticker set is found and the user wants to add it, then call changeStickerSet
public struct InternalLinkTypeStickerSet: Codable, Equatable, Hashable {

    /// True, if the sticker set is expected to contain custom emoji
    public let expectCustomEmoji: Bool

    /// Name of the sticker set
    public let stickerSetName: String


    public init(
        expectCustomEmoji: Bool,
        stickerSetName: String
    ) {
        self.expectCustomEmoji = expectCustomEmoji
        self.stickerSetName = stickerSetName
    }
}

/// The link is a link to a story. Call searchPublicChat with the given sender username, then call getStory with the received chat identifier and the given story identifier, then show the story if received
public struct InternalLinkTypeStory: Codable, Equatable, Hashable {

    /// Story identifier
    public let storyId: Int

    /// Username of the sender of the story
    public let storySenderUsername: String


    public init(
        storyId: Int,
        storySenderUsername: String
    ) {
        self.storyId = storyId
        self.storySenderUsername = storySenderUsername
    }
}

/// The link is a link to a theme. TDLib has no theme support yet
public struct InternalLinkTypeTheme: Codable, Equatable, Hashable {

    /// Name of the theme
    public let themeName: String


    public init(themeName: String) {
        self.themeName = themeName
    }
}

/// The link is an unknown tg: link. Call getDeepLinkInfo to process the link
public struct InternalLinkTypeUnknownDeepLink: Codable, Equatable, Hashable {

    /// Link to be passed to getDeepLinkInfo
    public let link: String


    public init(link: String) {
        self.link = link
    }
}

/// The link is a link to a user by its phone number. Call searchUserByPhoneNumber with the given phone number to process the link. If the user is found, then call createPrivateChat and open the chat. If draft text isn't empty, then put the draft text in the input field
public struct InternalLinkTypeUserPhoneNumber: Codable, Equatable, Hashable {

    /// Draft text for message to send in the chat
    public let draftText: String

    /// Phone number of the user
    public let phoneNumber: String


    public init(
        draftText: String,
        phoneNumber: String
    ) {
        self.draftText = draftText
        self.phoneNumber = phoneNumber
    }
}

/// The link is a link to a user by a temporary token. Call searchUserByToken with the given token to process the link. If the user is found, then call createPrivateChat and open the chat
public struct InternalLinkTypeUserToken: Codable, Equatable, Hashable {

    /// The token
    public let token: String


    public init(token: String) {
        self.token = token
    }
}

/// The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinGroupCall with the given invite hash to process the link
public struct InternalLinkTypeVideoChat: Codable, Equatable, Hashable {

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

/// The link is a link to a Web App. Call searchPublicChat with the given bot username, check that the user is a bot, then call searchWebApp with the received bot and the given web_app_short_name. Process received foundWebApp by showing a confirmation dialog if needed. If the bot can be added to attachment or side menu, but isn't added yet, then show a disclaimer about Mini Apps being a third-party apps instead of the dialog and ask the user to accept their Terms of service. If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot. Then, call getWebAppLinkUrl and open the returned URL as a Web App
public struct InternalLinkTypeWebApp: Codable, Equatable, Hashable {

    /// Username of the bot that owns the Web App
    public let botUsername: String

    /// Start parameter to be passed to getWebAppLinkUrl
    public let startParameter: String

    /// Short name of the Web App
    public let webAppShortName: String


    public init(
        botUsername: String,
        startParameter: String,
        webAppShortName: String
    ) {
        self.botUsername = botUsername
        self.startParameter = startParameter
        self.webAppShortName = webAppShortName
    }
}

