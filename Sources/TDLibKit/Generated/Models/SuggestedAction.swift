//
//  SuggestedAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Describes an action suggested to the current user
public indirect enum SuggestedAction: Codable, Equatable, Hashable {

    /// Suggests that the user enable the archive_and_mute_new_chats_from_unknown_users setting in archiveChatListSettings
    case suggestedActionEnableArchiveAndMuteNewChats

    /// Suggests that the user check whether they still remember their 2-step verification password
    case suggestedActionCheckPassword

    /// Suggests that the user check whether the authorization phone number is correct and change the phone number if it is inaccessible
    case suggestedActionCheckPhoneNumber

    /// Suggests that the user view a hint about the meaning of one and two check marks on sent messages
    case suggestedActionViewChecksHint

    /// Suggests that the user view a hint about receiving the first TON wallet transfer
    case suggestedActionViewFirstTonWalletTransferHint

    /// Suggests that the user convert the specified supergroup to a broadcast group
    case suggestedActionConvertToBroadcastGroup(SuggestedActionConvertToBroadcastGroup)

    /// Suggests that the user set a 2-step verification password to be able to log in again
    case suggestedActionSetPassword(SuggestedActionSetPassword)

    /// Suggests that the user upgrade the Premium subscription from monthly payments to annual payments
    case suggestedActionUpgradePremium

    /// Suggests that the user restore a recently expired Premium subscription
    case suggestedActionRestorePremium

    /// Suggests that the user subscribe to the Premium subscription with annual payments
    case suggestedActionSubscribeToAnnualPremium

    /// Suggests that the user gift Telegram Premium to friends for Christmas
    case suggestedActionGiftPremiumForChristmas

    /// Suggests that the user set their birthdate
    case suggestedActionSetBirthdate

    /// Suggests that the user set a profile photo
    case suggestedActionSetProfilePhoto

    /// Suggests that the user extend their expiring Telegram Premium subscription
    case suggestedActionExtendPremium(SuggestedActionExtendPremium)

    /// Suggests that the user extend their expiring Telegram Star subscriptions. Call getStarSubscriptions with only_expiring == true to get the number of expiring subscriptions and the number of Telegram Stars that must be bought
    case suggestedActionExtendStarSubscriptions

    /// A custom suggestion to be shown at the top of the chat list
    case suggestedActionCustom(SuggestedActionCustom)

    /// Suggests that the user add a login email address. Call isLoginEmailAddressRequired, and then setLoginEmailAddress or checkLoginEmailAddressCode to change the login email address
    case suggestedActionSetLoginEmailAddress(SuggestedActionSetLoginEmailAddress)

    /// Suggests that the user add a passkey for login using addLoginPasskey
    case suggestedActionAddLoginPasskey


    private enum Kind: String, Codable {
        case suggestedActionEnableArchiveAndMuteNewChats
        case suggestedActionCheckPassword
        case suggestedActionCheckPhoneNumber
        case suggestedActionViewChecksHint
        case suggestedActionViewFirstTonWalletTransferHint
        case suggestedActionConvertToBroadcastGroup
        case suggestedActionSetPassword
        case suggestedActionUpgradePremium
        case suggestedActionRestorePremium
        case suggestedActionSubscribeToAnnualPremium
        case suggestedActionGiftPremiumForChristmas
        case suggestedActionSetBirthdate
        case suggestedActionSetProfilePhoto
        case suggestedActionExtendPremium
        case suggestedActionExtendStarSubscriptions
        case suggestedActionCustom
        case suggestedActionSetLoginEmailAddress
        case suggestedActionAddLoginPasskey
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .suggestedActionEnableArchiveAndMuteNewChats:
            self = .suggestedActionEnableArchiveAndMuteNewChats
        case .suggestedActionCheckPassword:
            self = .suggestedActionCheckPassword
        case .suggestedActionCheckPhoneNumber:
            self = .suggestedActionCheckPhoneNumber
        case .suggestedActionViewChecksHint:
            self = .suggestedActionViewChecksHint
        case .suggestedActionViewFirstTonWalletTransferHint:
            self = .suggestedActionViewFirstTonWalletTransferHint
        case .suggestedActionConvertToBroadcastGroup:
            let value = try SuggestedActionConvertToBroadcastGroup(from: decoder)
            self = .suggestedActionConvertToBroadcastGroup(value)
        case .suggestedActionSetPassword:
            let value = try SuggestedActionSetPassword(from: decoder)
            self = .suggestedActionSetPassword(value)
        case .suggestedActionUpgradePremium:
            self = .suggestedActionUpgradePremium
        case .suggestedActionRestorePremium:
            self = .suggestedActionRestorePremium
        case .suggestedActionSubscribeToAnnualPremium:
            self = .suggestedActionSubscribeToAnnualPremium
        case .suggestedActionGiftPremiumForChristmas:
            self = .suggestedActionGiftPremiumForChristmas
        case .suggestedActionSetBirthdate:
            self = .suggestedActionSetBirthdate
        case .suggestedActionSetProfilePhoto:
            self = .suggestedActionSetProfilePhoto
        case .suggestedActionExtendPremium:
            let value = try SuggestedActionExtendPremium(from: decoder)
            self = .suggestedActionExtendPremium(value)
        case .suggestedActionExtendStarSubscriptions:
            self = .suggestedActionExtendStarSubscriptions
        case .suggestedActionCustom:
            let value = try SuggestedActionCustom(from: decoder)
            self = .suggestedActionCustom(value)
        case .suggestedActionSetLoginEmailAddress:
            let value = try SuggestedActionSetLoginEmailAddress(from: decoder)
            self = .suggestedActionSetLoginEmailAddress(value)
        case .suggestedActionAddLoginPasskey:
            self = .suggestedActionAddLoginPasskey
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .suggestedActionEnableArchiveAndMuteNewChats:
            try container.encode(Kind.suggestedActionEnableArchiveAndMuteNewChats, forKey: .type)
        case .suggestedActionCheckPassword:
            try container.encode(Kind.suggestedActionCheckPassword, forKey: .type)
        case .suggestedActionCheckPhoneNumber:
            try container.encode(Kind.suggestedActionCheckPhoneNumber, forKey: .type)
        case .suggestedActionViewChecksHint:
            try container.encode(Kind.suggestedActionViewChecksHint, forKey: .type)
        case .suggestedActionViewFirstTonWalletTransferHint:
            try container.encode(Kind.suggestedActionViewFirstTonWalletTransferHint, forKey: .type)
        case .suggestedActionConvertToBroadcastGroup(let value):
            try container.encode(Kind.suggestedActionConvertToBroadcastGroup, forKey: .type)
            try value.encode(to: encoder)
        case .suggestedActionSetPassword(let value):
            try container.encode(Kind.suggestedActionSetPassword, forKey: .type)
            try value.encode(to: encoder)
        case .suggestedActionUpgradePremium:
            try container.encode(Kind.suggestedActionUpgradePremium, forKey: .type)
        case .suggestedActionRestorePremium:
            try container.encode(Kind.suggestedActionRestorePremium, forKey: .type)
        case .suggestedActionSubscribeToAnnualPremium:
            try container.encode(Kind.suggestedActionSubscribeToAnnualPremium, forKey: .type)
        case .suggestedActionGiftPremiumForChristmas:
            try container.encode(Kind.suggestedActionGiftPremiumForChristmas, forKey: .type)
        case .suggestedActionSetBirthdate:
            try container.encode(Kind.suggestedActionSetBirthdate, forKey: .type)
        case .suggestedActionSetProfilePhoto:
            try container.encode(Kind.suggestedActionSetProfilePhoto, forKey: .type)
        case .suggestedActionExtendPremium(let value):
            try container.encode(Kind.suggestedActionExtendPremium, forKey: .type)
            try value.encode(to: encoder)
        case .suggestedActionExtendStarSubscriptions:
            try container.encode(Kind.suggestedActionExtendStarSubscriptions, forKey: .type)
        case .suggestedActionCustom(let value):
            try container.encode(Kind.suggestedActionCustom, forKey: .type)
            try value.encode(to: encoder)
        case .suggestedActionSetLoginEmailAddress(let value):
            try container.encode(Kind.suggestedActionSetLoginEmailAddress, forKey: .type)
            try value.encode(to: encoder)
        case .suggestedActionAddLoginPasskey:
            try container.encode(Kind.suggestedActionAddLoginPasskey, forKey: .type)
        }
    }
}

/// Suggests that the user convert the specified supergroup to a broadcast group
public struct SuggestedActionConvertToBroadcastGroup: Codable, Equatable, Hashable {

    /// Supergroup identifier
    public let supergroupId: Int64


    public init(supergroupId: Int64) {
        self.supergroupId = supergroupId
    }
}

/// Suggests that the user set a 2-step verification password to be able to log in again
public struct SuggestedActionSetPassword: Codable, Equatable, Hashable {

    /// The number of days to pass between consecutive authorizations if the user declines to set a password; if 0, then the user is advised to set the password for security reasons
    public let authorizationDelay: Int


    public init(authorizationDelay: Int) {
        self.authorizationDelay = authorizationDelay
    }
}

/// Suggests that the user extend their expiring Telegram Premium subscription
public struct SuggestedActionExtendPremium: Codable, Equatable, Hashable {

    /// A URL for managing the Telegram Premium subscription
    public let managePremiumSubscriptionUrl: String


    public init(managePremiumSubscriptionUrl: String) {
        self.managePremiumSubscriptionUrl = managePremiumSubscriptionUrl
    }
}

/// A custom suggestion to be shown at the top of the chat list
public struct SuggestedActionCustom: Codable, Equatable, Hashable {

    public let description: FormattedText

    /// Unique name of the suggestion
    public let name: String

    /// Title of the suggestion
    public let title: FormattedText

    /// The link to open when the suggestion is clicked
    public let url: String


    public init(
        description: FormattedText,
        name: String,
        title: FormattedText,
        url: String
    ) {
        self.description = description
        self.name = name
        self.title = title
        self.url = url
    }
}

/// Suggests that the user add a login email address. Call isLoginEmailAddressRequired, and then setLoginEmailAddress or checkLoginEmailAddressCode to change the login email address
public struct SuggestedActionSetLoginEmailAddress: Codable, Equatable, Hashable {

    /// True, if the suggested action can be hidden using hideSuggestedAction. Otherwise, the user must not be able to use the application without setting up the email address
    public let canBeHidden: Bool


    public init(canBeHidden: Bool) {
        self.canBeHidden = canBeHidden
    }
}

