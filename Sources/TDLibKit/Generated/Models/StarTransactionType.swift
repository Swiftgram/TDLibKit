//
//  StarTransactionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Describes type of transaction with Telegram Stars
public indirect enum StarTransactionType: Codable, Equatable, Hashable {

    /// The transaction is a deposit of Telegram Stars from the Premium bot; for regular users only
    case starTransactionTypePremiumBotDeposit

    /// The transaction is a deposit of Telegram Stars from App Store; for regular users only
    case starTransactionTypeAppStoreDeposit

    /// The transaction is a deposit of Telegram Stars from Google Play; for regular users only
    case starTransactionTypeGooglePlayDeposit

    /// The transaction is a deposit of Telegram Stars from Fragment; for regular users and bots only
    case starTransactionTypeFragmentDeposit

    /// The transaction is a deposit of Telegram Stars by another user; for regular users only
    case starTransactionTypeUserDeposit(StarTransactionTypeUserDeposit)

    /// The transaction is a deposit of Telegram Stars from a giveaway; for regular users only
    case starTransactionTypeGiveawayDeposit(StarTransactionTypeGiveawayDeposit)

    /// The transaction is a withdrawal of earned Telegram Stars to Fragment; for bots and channel chats only
    case starTransactionTypeFragmentWithdrawal(StarTransactionTypeFragmentWithdrawal)

    /// The transaction is a withdrawal of earned Telegram Stars to Telegram Ad platform; for bots and channel chats only
    case starTransactionTypeTelegramAdsWithdrawal

    /// The transaction is a payment for Telegram API usage; for bots only
    case starTransactionTypeTelegramApiUsage(StarTransactionTypeTelegramApiUsage)

    /// The transaction is a purchase of paid media from a bot or a business account by the current user; for regular users only
    case starTransactionTypeBotPaidMediaPurchase(StarTransactionTypeBotPaidMediaPurchase)

    /// The transaction is a sale of paid media by the bot or a business account managed by the bot; for bots only
    case starTransactionTypeBotPaidMediaSale(StarTransactionTypeBotPaidMediaSale)

    /// The transaction is a purchase of paid media from a channel by the current user; for regular users only
    case starTransactionTypeChannelPaidMediaPurchase(StarTransactionTypeChannelPaidMediaPurchase)

    /// The transaction is a sale of paid media by the channel chat; for channel chats only
    case starTransactionTypeChannelPaidMediaSale(StarTransactionTypeChannelPaidMediaSale)

    /// The transaction is a purchase of a product from a bot or a business account by the current user; for regular users only
    case starTransactionTypeBotInvoicePurchase(StarTransactionTypeBotInvoicePurchase)

    /// The transaction is a sale of a product by the bot; for bots only
    case starTransactionTypeBotInvoiceSale(StarTransactionTypeBotInvoiceSale)

    /// The transaction is a purchase of a subscription from a bot or a business account by the current user; for regular users only
    case starTransactionTypeBotSubscriptionPurchase(StarTransactionTypeBotSubscriptionPurchase)

    /// The transaction is a sale of a subscription by the bot; for bots only
    case starTransactionTypeBotSubscriptionSale(StarTransactionTypeBotSubscriptionSale)

    /// The transaction is a purchase of a subscription to a channel chat by the current user; for regular users only
    case starTransactionTypeChannelSubscriptionPurchase(StarTransactionTypeChannelSubscriptionPurchase)

    /// The transaction is a sale of a subscription by the channel chat; for channel chats only
    case starTransactionTypeChannelSubscriptionSale(StarTransactionTypeChannelSubscriptionSale)

    /// The transaction is a purchase of a regular gift to another user; for regular users and bots only
    case starTransactionTypeGiftPurchase(StarTransactionTypeGiftPurchase)

    /// The transaction is a transfer of an upgraded gift to another user; for regular users only
    case starTransactionTypeGiftTransfer(StarTransactionTypeGiftTransfer)

    /// The transaction is a sale of a gift received from another user or bot; for regular users only
    case starTransactionTypeGiftSale(StarTransactionTypeGiftSale)

    /// The transaction is an upgrade of a gift; for regular users only
    case starTransactionTypeGiftUpgrade(StarTransactionTypeGiftUpgrade)

    /// The transaction is a sending of a paid reaction to a message in a channel chat by the current user; for regular users only
    case starTransactionTypeChannelPaidReactionSend(StarTransactionTypeChannelPaidReactionSend)

    /// The transaction is a receiving of a paid reaction to a message by the channel chat; for channel chats only
    case starTransactionTypeChannelPaidReactionReceive(StarTransactionTypeChannelPaidReactionReceive)

    /// The transaction is a receiving of a commission from an affiliate program; for regular users, bots and channel chats only
    case starTransactionTypeAffiliateProgramCommission(StarTransactionTypeAffiliateProgramCommission)

    /// The transaction is a transaction of an unsupported type
    case starTransactionTypeUnsupported


    private enum Kind: String, Codable {
        case starTransactionTypePremiumBotDeposit
        case starTransactionTypeAppStoreDeposit
        case starTransactionTypeGooglePlayDeposit
        case starTransactionTypeFragmentDeposit
        case starTransactionTypeUserDeposit
        case starTransactionTypeGiveawayDeposit
        case starTransactionTypeFragmentWithdrawal
        case starTransactionTypeTelegramAdsWithdrawal
        case starTransactionTypeTelegramApiUsage
        case starTransactionTypeBotPaidMediaPurchase
        case starTransactionTypeBotPaidMediaSale
        case starTransactionTypeChannelPaidMediaPurchase
        case starTransactionTypeChannelPaidMediaSale
        case starTransactionTypeBotInvoicePurchase
        case starTransactionTypeBotInvoiceSale
        case starTransactionTypeBotSubscriptionPurchase
        case starTransactionTypeBotSubscriptionSale
        case starTransactionTypeChannelSubscriptionPurchase
        case starTransactionTypeChannelSubscriptionSale
        case starTransactionTypeGiftPurchase
        case starTransactionTypeGiftTransfer
        case starTransactionTypeGiftSale
        case starTransactionTypeGiftUpgrade
        case starTransactionTypeChannelPaidReactionSend
        case starTransactionTypeChannelPaidReactionReceive
        case starTransactionTypeAffiliateProgramCommission
        case starTransactionTypeUnsupported
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .starTransactionTypePremiumBotDeposit:
            self = .starTransactionTypePremiumBotDeposit
        case .starTransactionTypeAppStoreDeposit:
            self = .starTransactionTypeAppStoreDeposit
        case .starTransactionTypeGooglePlayDeposit:
            self = .starTransactionTypeGooglePlayDeposit
        case .starTransactionTypeFragmentDeposit:
            self = .starTransactionTypeFragmentDeposit
        case .starTransactionTypeUserDeposit:
            let value = try StarTransactionTypeUserDeposit(from: decoder)
            self = .starTransactionTypeUserDeposit(value)
        case .starTransactionTypeGiveawayDeposit:
            let value = try StarTransactionTypeGiveawayDeposit(from: decoder)
            self = .starTransactionTypeGiveawayDeposit(value)
        case .starTransactionTypeFragmentWithdrawal:
            let value = try StarTransactionTypeFragmentWithdrawal(from: decoder)
            self = .starTransactionTypeFragmentWithdrawal(value)
        case .starTransactionTypeTelegramAdsWithdrawal:
            self = .starTransactionTypeTelegramAdsWithdrawal
        case .starTransactionTypeTelegramApiUsage:
            let value = try StarTransactionTypeTelegramApiUsage(from: decoder)
            self = .starTransactionTypeTelegramApiUsage(value)
        case .starTransactionTypeBotPaidMediaPurchase:
            let value = try StarTransactionTypeBotPaidMediaPurchase(from: decoder)
            self = .starTransactionTypeBotPaidMediaPurchase(value)
        case .starTransactionTypeBotPaidMediaSale:
            let value = try StarTransactionTypeBotPaidMediaSale(from: decoder)
            self = .starTransactionTypeBotPaidMediaSale(value)
        case .starTransactionTypeChannelPaidMediaPurchase:
            let value = try StarTransactionTypeChannelPaidMediaPurchase(from: decoder)
            self = .starTransactionTypeChannelPaidMediaPurchase(value)
        case .starTransactionTypeChannelPaidMediaSale:
            let value = try StarTransactionTypeChannelPaidMediaSale(from: decoder)
            self = .starTransactionTypeChannelPaidMediaSale(value)
        case .starTransactionTypeBotInvoicePurchase:
            let value = try StarTransactionTypeBotInvoicePurchase(from: decoder)
            self = .starTransactionTypeBotInvoicePurchase(value)
        case .starTransactionTypeBotInvoiceSale:
            let value = try StarTransactionTypeBotInvoiceSale(from: decoder)
            self = .starTransactionTypeBotInvoiceSale(value)
        case .starTransactionTypeBotSubscriptionPurchase:
            let value = try StarTransactionTypeBotSubscriptionPurchase(from: decoder)
            self = .starTransactionTypeBotSubscriptionPurchase(value)
        case .starTransactionTypeBotSubscriptionSale:
            let value = try StarTransactionTypeBotSubscriptionSale(from: decoder)
            self = .starTransactionTypeBotSubscriptionSale(value)
        case .starTransactionTypeChannelSubscriptionPurchase:
            let value = try StarTransactionTypeChannelSubscriptionPurchase(from: decoder)
            self = .starTransactionTypeChannelSubscriptionPurchase(value)
        case .starTransactionTypeChannelSubscriptionSale:
            let value = try StarTransactionTypeChannelSubscriptionSale(from: decoder)
            self = .starTransactionTypeChannelSubscriptionSale(value)
        case .starTransactionTypeGiftPurchase:
            let value = try StarTransactionTypeGiftPurchase(from: decoder)
            self = .starTransactionTypeGiftPurchase(value)
        case .starTransactionTypeGiftTransfer:
            let value = try StarTransactionTypeGiftTransfer(from: decoder)
            self = .starTransactionTypeGiftTransfer(value)
        case .starTransactionTypeGiftSale:
            let value = try StarTransactionTypeGiftSale(from: decoder)
            self = .starTransactionTypeGiftSale(value)
        case .starTransactionTypeGiftUpgrade:
            let value = try StarTransactionTypeGiftUpgrade(from: decoder)
            self = .starTransactionTypeGiftUpgrade(value)
        case .starTransactionTypeChannelPaidReactionSend:
            let value = try StarTransactionTypeChannelPaidReactionSend(from: decoder)
            self = .starTransactionTypeChannelPaidReactionSend(value)
        case .starTransactionTypeChannelPaidReactionReceive:
            let value = try StarTransactionTypeChannelPaidReactionReceive(from: decoder)
            self = .starTransactionTypeChannelPaidReactionReceive(value)
        case .starTransactionTypeAffiliateProgramCommission:
            let value = try StarTransactionTypeAffiliateProgramCommission(from: decoder)
            self = .starTransactionTypeAffiliateProgramCommission(value)
        case .starTransactionTypeUnsupported:
            self = .starTransactionTypeUnsupported
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .starTransactionTypePremiumBotDeposit:
            try container.encode(Kind.starTransactionTypePremiumBotDeposit, forKey: .type)
        case .starTransactionTypeAppStoreDeposit:
            try container.encode(Kind.starTransactionTypeAppStoreDeposit, forKey: .type)
        case .starTransactionTypeGooglePlayDeposit:
            try container.encode(Kind.starTransactionTypeGooglePlayDeposit, forKey: .type)
        case .starTransactionTypeFragmentDeposit:
            try container.encode(Kind.starTransactionTypeFragmentDeposit, forKey: .type)
        case .starTransactionTypeUserDeposit(let value):
            try container.encode(Kind.starTransactionTypeUserDeposit, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeGiveawayDeposit(let value):
            try container.encode(Kind.starTransactionTypeGiveawayDeposit, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeFragmentWithdrawal(let value):
            try container.encode(Kind.starTransactionTypeFragmentWithdrawal, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeTelegramAdsWithdrawal:
            try container.encode(Kind.starTransactionTypeTelegramAdsWithdrawal, forKey: .type)
        case .starTransactionTypeTelegramApiUsage(let value):
            try container.encode(Kind.starTransactionTypeTelegramApiUsage, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeBotPaidMediaPurchase(let value):
            try container.encode(Kind.starTransactionTypeBotPaidMediaPurchase, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeBotPaidMediaSale(let value):
            try container.encode(Kind.starTransactionTypeBotPaidMediaSale, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeChannelPaidMediaPurchase(let value):
            try container.encode(Kind.starTransactionTypeChannelPaidMediaPurchase, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeChannelPaidMediaSale(let value):
            try container.encode(Kind.starTransactionTypeChannelPaidMediaSale, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeBotInvoicePurchase(let value):
            try container.encode(Kind.starTransactionTypeBotInvoicePurchase, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeBotInvoiceSale(let value):
            try container.encode(Kind.starTransactionTypeBotInvoiceSale, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeBotSubscriptionPurchase(let value):
            try container.encode(Kind.starTransactionTypeBotSubscriptionPurchase, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeBotSubscriptionSale(let value):
            try container.encode(Kind.starTransactionTypeBotSubscriptionSale, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeChannelSubscriptionPurchase(let value):
            try container.encode(Kind.starTransactionTypeChannelSubscriptionPurchase, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeChannelSubscriptionSale(let value):
            try container.encode(Kind.starTransactionTypeChannelSubscriptionSale, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeGiftPurchase(let value):
            try container.encode(Kind.starTransactionTypeGiftPurchase, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeGiftTransfer(let value):
            try container.encode(Kind.starTransactionTypeGiftTransfer, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeGiftSale(let value):
            try container.encode(Kind.starTransactionTypeGiftSale, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeGiftUpgrade(let value):
            try container.encode(Kind.starTransactionTypeGiftUpgrade, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeChannelPaidReactionSend(let value):
            try container.encode(Kind.starTransactionTypeChannelPaidReactionSend, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeChannelPaidReactionReceive(let value):
            try container.encode(Kind.starTransactionTypeChannelPaidReactionReceive, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeAffiliateProgramCommission(let value):
            try container.encode(Kind.starTransactionTypeAffiliateProgramCommission, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionTypeUnsupported:
            try container.encode(Kind.starTransactionTypeUnsupported, forKey: .type)
        }
    }
}

/// The transaction is a deposit of Telegram Stars by another user; for regular users only
public struct StarTransactionTypeUserDeposit: Codable, Equatable, Hashable {

    /// The sticker to be shown in the transaction information; may be null if unknown
    public let sticker: Sticker?

    /// Identifier of the user that gifted Telegram Stars; 0 if the user was anonymous
    public let userId: Int64


    public init(
        sticker: Sticker?,
        userId: Int64
    ) {
        self.sticker = sticker
        self.userId = userId
    }
}

/// The transaction is a deposit of Telegram Stars from a giveaway; for regular users only
public struct StarTransactionTypeGiveawayDeposit: Codable, Equatable, Hashable {

    /// Identifier of a supergroup or a channel chat that created the giveaway
    public let chatId: Int64

    /// Identifier of the message with the giveaway; can be 0 or an identifier of a deleted message
    public let giveawayMessageId: Int64


    public init(
        chatId: Int64,
        giveawayMessageId: Int64
    ) {
        self.chatId = chatId
        self.giveawayMessageId = giveawayMessageId
    }
}

/// The transaction is a withdrawal of earned Telegram Stars to Fragment; for bots and channel chats only
public struct StarTransactionTypeFragmentWithdrawal: Codable, Equatable, Hashable {

    /// State of the withdrawal; may be null for refunds from Fragment
    public let withdrawalState: RevenueWithdrawalState?


    public init(withdrawalState: RevenueWithdrawalState?) {
        self.withdrawalState = withdrawalState
    }
}

/// The transaction is a payment for Telegram API usage; for bots only
public struct StarTransactionTypeTelegramApiUsage: Codable, Equatable, Hashable {

    /// The number of billed requests
    public let requestCount: Int


    public init(requestCount: Int) {
        self.requestCount = requestCount
    }
}

/// The transaction is a purchase of paid media from a bot or a business account by the current user; for regular users only
public struct StarTransactionTypeBotPaidMediaPurchase: Codable, Equatable, Hashable {

    /// The bought media if the transaction wasn't refunded
    public let media: [PaidMedia]

    /// Identifier of the bot or the business account user that sent the paid media
    public let userId: Int64


    public init(
        media: [PaidMedia],
        userId: Int64
    ) {
        self.media = media
        self.userId = userId
    }
}

/// The transaction is a sale of paid media by the bot or a business account managed by the bot; for bots only
public struct StarTransactionTypeBotPaidMediaSale: Codable, Equatable, Hashable {

    /// Information about the affiliate which received commission from the transaction; may be null if none
    public let affiliate: AffiliateInfo?

    /// The bought media
    public let media: [PaidMedia]

    /// Bot-provided payload
    public let payload: String

    /// Identifier of the user that bought the media
    public let userId: Int64


    public init(
        affiliate: AffiliateInfo?,
        media: [PaidMedia],
        payload: String,
        userId: Int64
    ) {
        self.affiliate = affiliate
        self.media = media
        self.payload = payload
        self.userId = userId
    }
}

/// The transaction is a purchase of paid media from a channel by the current user; for regular users only
public struct StarTransactionTypeChannelPaidMediaPurchase: Codable, Equatable, Hashable {

    /// Identifier of the channel chat that sent the paid media
    public let chatId: Int64

    /// The bought media if the transaction wasn't refunded
    public let media: [PaidMedia]

    /// Identifier of the corresponding message with paid media; can be 0 or an identifier of a deleted message
    public let messageId: Int64


    public init(
        chatId: Int64,
        media: [PaidMedia],
        messageId: Int64
    ) {
        self.chatId = chatId
        self.media = media
        self.messageId = messageId
    }
}

/// The transaction is a sale of paid media by the channel chat; for channel chats only
public struct StarTransactionTypeChannelPaidMediaSale: Codable, Equatable, Hashable {

    /// The bought media
    public let media: [PaidMedia]

    /// Identifier of the corresponding message with paid media; can be 0 or an identifier of a deleted message
    public let messageId: Int64

    /// Identifier of the user that bought the media
    public let userId: Int64


    public init(
        media: [PaidMedia],
        messageId: Int64,
        userId: Int64
    ) {
        self.media = media
        self.messageId = messageId
        self.userId = userId
    }
}

/// The transaction is a purchase of a product from a bot or a business account by the current user; for regular users only
public struct StarTransactionTypeBotInvoicePurchase: Codable, Equatable, Hashable {

    /// Information about the bought product
    public let productInfo: ProductInfo

    /// Identifier of the bot or the business account user that created the invoice
    public let userId: Int64


    public init(
        productInfo: ProductInfo,
        userId: Int64
    ) {
        self.productInfo = productInfo
        self.userId = userId
    }
}

/// The transaction is a sale of a product by the bot; for bots only
public struct StarTransactionTypeBotInvoiceSale: Codable, Equatable, Hashable {

    /// Information about the affiliate which received commission from the transaction; may be null if none
    public let affiliate: AffiliateInfo?

    /// Invoice payload
    public let invoicePayload: Data

    /// Information about the bought product
    public let productInfo: ProductInfo

    /// Identifier of the user that bought the product
    public let userId: Int64


    public init(
        affiliate: AffiliateInfo?,
        invoicePayload: Data,
        productInfo: ProductInfo,
        userId: Int64
    ) {
        self.affiliate = affiliate
        self.invoicePayload = invoicePayload
        self.productInfo = productInfo
        self.userId = userId
    }
}

/// The transaction is a purchase of a subscription from a bot or a business account by the current user; for regular users only
public struct StarTransactionTypeBotSubscriptionPurchase: Codable, Equatable, Hashable {

    /// Information about the bought subscription
    public let productInfo: ProductInfo

    /// The number of seconds between consecutive Telegram Star debitings
    public let subscriptionPeriod: Int

    /// Identifier of the bot or the business account user that created the subscription link
    public let userId: Int64


    public init(
        productInfo: ProductInfo,
        subscriptionPeriod: Int,
        userId: Int64
    ) {
        self.productInfo = productInfo
        self.subscriptionPeriod = subscriptionPeriod
        self.userId = userId
    }
}

/// The transaction is a sale of a subscription by the bot; for bots only
public struct StarTransactionTypeBotSubscriptionSale: Codable, Equatable, Hashable {

    /// Information about the affiliate which received commission from the transaction; may be null if none
    public let affiliate: AffiliateInfo?

    /// Invoice payload
    public let invoicePayload: Data

    /// Information about the bought subscription
    public let productInfo: ProductInfo

    /// The number of seconds between consecutive Telegram Star debitings
    public let subscriptionPeriod: Int

    /// Identifier of the user that bought the subscription
    public let userId: Int64


    public init(
        affiliate: AffiliateInfo?,
        invoicePayload: Data,
        productInfo: ProductInfo,
        subscriptionPeriod: Int,
        userId: Int64
    ) {
        self.affiliate = affiliate
        self.invoicePayload = invoicePayload
        self.productInfo = productInfo
        self.subscriptionPeriod = subscriptionPeriod
        self.userId = userId
    }
}

/// The transaction is a purchase of a subscription to a channel chat by the current user; for regular users only
public struct StarTransactionTypeChannelSubscriptionPurchase: Codable, Equatable, Hashable {

    /// Identifier of the channel chat that created the subscription
    public let chatId: Int64

    /// The number of seconds between consecutive Telegram Star debitings
    public let subscriptionPeriod: Int


    public init(
        chatId: Int64,
        subscriptionPeriod: Int
    ) {
        self.chatId = chatId
        self.subscriptionPeriod = subscriptionPeriod
    }
}

/// The transaction is a sale of a subscription by the channel chat; for channel chats only
public struct StarTransactionTypeChannelSubscriptionSale: Codable, Equatable, Hashable {

    /// The number of seconds between consecutive Telegram Star debitings
    public let subscriptionPeriod: Int

    /// Identifier of the user that bought the subscription
    public let userId: Int64


    public init(
        subscriptionPeriod: Int,
        userId: Int64
    ) {
        self.subscriptionPeriod = subscriptionPeriod
        self.userId = userId
    }
}

/// The transaction is a purchase of a regular gift to another user; for regular users and bots only
public struct StarTransactionTypeGiftPurchase: Codable, Equatable, Hashable {

    /// The gift
    public let gift: Gift

    /// Identifier of the user that received the gift
    public let userId: Int64


    public init(
        gift: Gift,
        userId: Int64
    ) {
        self.gift = gift
        self.userId = userId
    }
}

/// The transaction is a transfer of an upgraded gift to another user; for regular users only
public struct StarTransactionTypeGiftTransfer: Codable, Equatable, Hashable {

    /// The gift
    public let gift: UpgradedGift

    /// Identifier of the user that received the gift
    public let userId: Int64


    public init(
        gift: UpgradedGift,
        userId: Int64
    ) {
        self.gift = gift
        self.userId = userId
    }
}

/// The transaction is a sale of a gift received from another user or bot; for regular users only
public struct StarTransactionTypeGiftSale: Codable, Equatable, Hashable {

    /// The gift
    public let gift: Gift

    /// Identifier of the user that sent the gift
    public let userId: Int64


    public init(
        gift: Gift,
        userId: Int64
    ) {
        self.gift = gift
        self.userId = userId
    }
}

/// The transaction is an upgrade of a gift; for regular users only
public struct StarTransactionTypeGiftUpgrade: Codable, Equatable, Hashable {

    /// The upgraded gift
    public let gift: UpgradedGift


    public init(gift: UpgradedGift) {
        self.gift = gift
    }
}

/// The transaction is a sending of a paid reaction to a message in a channel chat by the current user; for regular users only
public struct StarTransactionTypeChannelPaidReactionSend: Codable, Equatable, Hashable {

    /// Identifier of the channel chat
    public let chatId: Int64

    /// Identifier of the reacted message; can be 0 or an identifier of a deleted message
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

/// The transaction is a receiving of a paid reaction to a message by the channel chat; for channel chats only
public struct StarTransactionTypeChannelPaidReactionReceive: Codable, Equatable, Hashable {

    /// Identifier of the reacted message; can be 0 or an identifier of a deleted message
    public let messageId: Int64

    /// Identifier of the user that added the paid reaction
    public let userId: Int64


    public init(
        messageId: Int64,
        userId: Int64
    ) {
        self.messageId = messageId
        self.userId = userId
    }
}

/// The transaction is a receiving of a commission from an affiliate program; for regular users, bots and channel chats only
public struct StarTransactionTypeAffiliateProgramCommission: Codable, Equatable, Hashable {

    /// Identifier of the chat that created the affiliate program
    public let chatId: Int64

    /// The number of Telegram Stars received by the affiliate for each 1000 Telegram Stars received by the program owner
    public let commissionPerMille: Int


    public init(
        chatId: Int64,
        commissionPerMille: Int
    ) {
        self.chatId = chatId
        self.commissionPerMille = commissionPerMille
    }
}
