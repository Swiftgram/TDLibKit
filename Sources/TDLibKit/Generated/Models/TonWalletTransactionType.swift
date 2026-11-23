//
//  TonWalletTransactionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Describes type of transaction with a TON wallet
public indirect enum TonWalletTransactionType: Codable, Equatable, Hashable {

    /// The transaction is a deposit from an on-ramp provider
    case tonWalletTransactionTypeOnRampDeposit(TonWalletTransactionTypeOnRampDeposit)

    /// A transfer of TON Grams to or from the wallet
    case tonWalletTransactionTypeTransfer(TonWalletTransactionTypeTransfer)

    /// A transfer of a TON NFT to or from the wallet
    case tonWalletTransactionTypeNftTransfer(TonWalletTransactionTypeNftTransfer)

    /// A Telegram gift was minted as a TON NFT directly to the wallet, or a minted gift was linked to or unlinked from a Telegram account; peer details aren't available for the transaction
    case tonWalletTransactionTypeTelegramGiftTransfer(TonWalletTransactionTypeTelegramGiftTransfer)

    /// A Telegram gift was bought on the TON blockchain
    case tonWalletTransactionTypeTelegramGiftPurchase(TonWalletTransactionTypeTelegramGiftPurchase)

    /// A Telegram gift was sold on the TON blockchain
    case tonWalletTransactionTypeTelegramGiftSale(TonWalletTransactionTypeTelegramGiftSale)

    /// A Telegram gift was put up for sale on the TON blockchain or its price was changed
    case tonWalletTransactionTypeTelegramGiftListing(TonWalletTransactionTypeTelegramGiftListing)

    /// A Telegram gift was removed from sale on the TON blockchain
    case tonWalletTransactionTypeTelegramGiftDelisting(TonWalletTransactionTypeTelegramGiftDelisting)

    /// An offer to buy a Telegram gift was created on the TON blockchain and the funds were placed in escrow
    case tonWalletTransactionTypeTelegramGiftOfferCreation(TonWalletTransactionTypeTelegramGiftOfferCreation)

    /// An offer to buy a Telegram gift was accepted on the TON blockchain. The buyer received the NFT and the seller received the price
    case tonWalletTransactionTypeTelegramGiftOfferAcceptance(TonWalletTransactionTypeTelegramGiftOfferAcceptance)

    /// An offer to buy a Telegram gift was canceled by the buyer on the TON blockchain
    case tonWalletTransactionTypeTelegramGiftOfferCancellation(TonWalletTransactionTypeTelegramGiftOfferCancellation)

    /// An offer to buy a Telegram gift was declined by the owner of the NFT or canceled by Telegram on the TON blockchain
    case tonWalletTransactionTypeTelegramGiftOfferDecline(TonWalletTransactionTypeTelegramGiftOfferDecline)

    /// An offer to buy a Telegram gift has expired on the TON blockchain
    case tonWalletTransactionTypeTelegramGiftOfferExpiration(TonWalletTransactionTypeTelegramGiftOfferExpiration)

    /// Change of the wallet key
    case tonWalletTransactionTypeKeyChange


    private enum Kind: String, Codable {
        case tonWalletTransactionTypeOnRampDeposit
        case tonWalletTransactionTypeTransfer
        case tonWalletTransactionTypeNftTransfer
        case tonWalletTransactionTypeTelegramGiftTransfer
        case tonWalletTransactionTypeTelegramGiftPurchase
        case tonWalletTransactionTypeTelegramGiftSale
        case tonWalletTransactionTypeTelegramGiftListing
        case tonWalletTransactionTypeTelegramGiftDelisting
        case tonWalletTransactionTypeTelegramGiftOfferCreation
        case tonWalletTransactionTypeTelegramGiftOfferAcceptance
        case tonWalletTransactionTypeTelegramGiftOfferCancellation
        case tonWalletTransactionTypeTelegramGiftOfferDecline
        case tonWalletTransactionTypeTelegramGiftOfferExpiration
        case tonWalletTransactionTypeKeyChange
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .tonWalletTransactionTypeOnRampDeposit:
            let value = try TonWalletTransactionTypeOnRampDeposit(from: decoder)
            self = .tonWalletTransactionTypeOnRampDeposit(value)
        case .tonWalletTransactionTypeTransfer:
            let value = try TonWalletTransactionTypeTransfer(from: decoder)
            self = .tonWalletTransactionTypeTransfer(value)
        case .tonWalletTransactionTypeNftTransfer:
            let value = try TonWalletTransactionTypeNftTransfer(from: decoder)
            self = .tonWalletTransactionTypeNftTransfer(value)
        case .tonWalletTransactionTypeTelegramGiftTransfer:
            let value = try TonWalletTransactionTypeTelegramGiftTransfer(from: decoder)
            self = .tonWalletTransactionTypeTelegramGiftTransfer(value)
        case .tonWalletTransactionTypeTelegramGiftPurchase:
            let value = try TonWalletTransactionTypeTelegramGiftPurchase(from: decoder)
            self = .tonWalletTransactionTypeTelegramGiftPurchase(value)
        case .tonWalletTransactionTypeTelegramGiftSale:
            let value = try TonWalletTransactionTypeTelegramGiftSale(from: decoder)
            self = .tonWalletTransactionTypeTelegramGiftSale(value)
        case .tonWalletTransactionTypeTelegramGiftListing:
            let value = try TonWalletTransactionTypeTelegramGiftListing(from: decoder)
            self = .tonWalletTransactionTypeTelegramGiftListing(value)
        case .tonWalletTransactionTypeTelegramGiftDelisting:
            let value = try TonWalletTransactionTypeTelegramGiftDelisting(from: decoder)
            self = .tonWalletTransactionTypeTelegramGiftDelisting(value)
        case .tonWalletTransactionTypeTelegramGiftOfferCreation:
            let value = try TonWalletTransactionTypeTelegramGiftOfferCreation(from: decoder)
            self = .tonWalletTransactionTypeTelegramGiftOfferCreation(value)
        case .tonWalletTransactionTypeTelegramGiftOfferAcceptance:
            let value = try TonWalletTransactionTypeTelegramGiftOfferAcceptance(from: decoder)
            self = .tonWalletTransactionTypeTelegramGiftOfferAcceptance(value)
        case .tonWalletTransactionTypeTelegramGiftOfferCancellation:
            let value = try TonWalletTransactionTypeTelegramGiftOfferCancellation(from: decoder)
            self = .tonWalletTransactionTypeTelegramGiftOfferCancellation(value)
        case .tonWalletTransactionTypeTelegramGiftOfferDecline:
            let value = try TonWalletTransactionTypeTelegramGiftOfferDecline(from: decoder)
            self = .tonWalletTransactionTypeTelegramGiftOfferDecline(value)
        case .tonWalletTransactionTypeTelegramGiftOfferExpiration:
            let value = try TonWalletTransactionTypeTelegramGiftOfferExpiration(from: decoder)
            self = .tonWalletTransactionTypeTelegramGiftOfferExpiration(value)
        case .tonWalletTransactionTypeKeyChange:
            self = .tonWalletTransactionTypeKeyChange
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .tonWalletTransactionTypeOnRampDeposit(let value):
            try container.encode(Kind.tonWalletTransactionTypeOnRampDeposit, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeTransfer(let value):
            try container.encode(Kind.tonWalletTransactionTypeTransfer, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeNftTransfer(let value):
            try container.encode(Kind.tonWalletTransactionTypeNftTransfer, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeTelegramGiftTransfer(let value):
            try container.encode(Kind.tonWalletTransactionTypeTelegramGiftTransfer, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeTelegramGiftPurchase(let value):
            try container.encode(Kind.tonWalletTransactionTypeTelegramGiftPurchase, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeTelegramGiftSale(let value):
            try container.encode(Kind.tonWalletTransactionTypeTelegramGiftSale, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeTelegramGiftListing(let value):
            try container.encode(Kind.tonWalletTransactionTypeTelegramGiftListing, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeTelegramGiftDelisting(let value):
            try container.encode(Kind.tonWalletTransactionTypeTelegramGiftDelisting, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeTelegramGiftOfferCreation(let value):
            try container.encode(Kind.tonWalletTransactionTypeTelegramGiftOfferCreation, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeTelegramGiftOfferAcceptance(let value):
            try container.encode(Kind.tonWalletTransactionTypeTelegramGiftOfferAcceptance, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeTelegramGiftOfferCancellation(let value):
            try container.encode(Kind.tonWalletTransactionTypeTelegramGiftOfferCancellation, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeTelegramGiftOfferDecline(let value):
            try container.encode(Kind.tonWalletTransactionTypeTelegramGiftOfferDecline, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeTelegramGiftOfferExpiration(let value):
            try container.encode(Kind.tonWalletTransactionTypeTelegramGiftOfferExpiration, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransactionTypeKeyChange:
            try container.encode(Kind.tonWalletTransactionTypeKeyChange, forKey: .type)
        }
    }
}

/// The transaction is a deposit from an on-ramp provider
public struct TonWalletTransactionTypeOnRampDeposit: Codable, Equatable, Hashable {

    /// The received amount, in the smallest units of TON Grams
    public let amount: TdInt64

    /// Name of the on-ramp provider
    public let providerName: String


    public init(
        amount: TdInt64,
        providerName: String
    ) {
        self.amount = amount
        self.providerName = providerName
    }
}

/// A transfer of TON Grams to or from the wallet
public struct TonWalletTransactionTypeTransfer: Codable, Equatable, Hashable {

    /// The received amount, in the smallest units of TON Grams; negative for outgoing transactions
    public let amount: TdInt64

    /// Comment added to the transaction
    public let comment: String

    /// True, if the comment is encrypted and must be decrypted using the user's private key
    public let isCommentEncrypted: Bool

    /// True, if the fee was paid by Telegram
    public let isGasless: Bool


    public init(
        amount: TdInt64,
        comment: String,
        isCommentEncrypted: Bool,
        isGasless: Bool
    ) {
        self.amount = amount
        self.comment = comment
        self.isCommentEncrypted = isCommentEncrypted
        self.isGasless = isGasless
    }
}

/// A transfer of a TON NFT to or from the wallet
public struct TonWalletTransactionTypeNftTransfer: Codable, Equatable, Hashable {

    /// Comment added to the transaction
    public let comment: String

    /// True, if the comment is encrypted and must be decrypted using the user's private key
    public let isCommentEncrypted: Bool

    /// True, if the transfer is outgoing
    public let isOutgoing: Bool

    /// The transferred NFT
    public let nft: TonNft


    public init(
        comment: String,
        isCommentEncrypted: Bool,
        isOutgoing: Bool,
        nft: TonNft
    ) {
        self.comment = comment
        self.isCommentEncrypted = isCommentEncrypted
        self.isOutgoing = isOutgoing
        self.nft = nft
    }
}

/// A Telegram gift was minted as a TON NFT directly to the wallet, or a minted gift was linked to or unlinked from a Telegram account; peer details aren't available for the transaction
public struct TonWalletTransactionTypeTelegramGiftTransfer: Codable, Equatable, Hashable {

    /// True, if the transfer is from the wallet to Telegram
    public let isOutgoing: Bool

    /// True, if the gift was displayed on the current user's profile page before or after the transfer
    public let isSaved: Bool

    /// The minted or transferred NFT
    public let nft: TonNft


    public init(
        isOutgoing: Bool,
        isSaved: Bool,
        nft: TonNft
    ) {
        self.isOutgoing = isOutgoing
        self.isSaved = isSaved
        self.nft = nft
    }
}

/// A Telegram gift was bought on the TON blockchain
public struct TonWalletTransactionTypeTelegramGiftPurchase: Codable, Equatable, Hashable {

    /// The amount paid for the gift, in the smallest units of TON Grams; always negative
    public let amount: TdInt64

    /// The bought NFT; may be null if unknown
    public let nft: TonNft?


    public init(
        amount: TdInt64,
        nft: TonNft?
    ) {
        self.amount = amount
        self.nft = nft
    }
}

/// A Telegram gift was sold on the TON blockchain
public struct TonWalletTransactionTypeTelegramGiftSale: Codable, Equatable, Hashable {

    /// The amount received for the gift, in the smallest units of TON Grams
    public let amount: TdInt64

    /// The sold NFT; may be null if unknown
    public let nft: TonNft?


    public init(
        amount: TdInt64,
        nft: TonNft?
    ) {
        self.amount = amount
        self.nft = nft
    }
}

/// A Telegram gift was put up for sale on the TON blockchain or its price was changed
public struct TonWalletTransactionTypeTelegramGiftListing: Codable, Equatable, Hashable {

    /// The cost of the action including refunds, in the smallest units of TON Grams; negative for outgoing transactions
    public let amount: TdInt64

    /// The NFT put up for sale; may be null if unknown
    public let nft: TonNft?

    /// The previous price of the gift, in the smallest units of TON Grams; 0 if the gift wasn't on sale before
    public let oldPrice: TdInt64

    /// The new price of the gift, in the smallest units of TON Grams
    public let price: TdInt64


    public init(
        amount: TdInt64,
        nft: TonNft?,
        oldPrice: TdInt64,
        price: TdInt64
    ) {
        self.amount = amount
        self.nft = nft
        self.oldPrice = oldPrice
        self.price = price
    }
}

/// A Telegram gift was removed from sale on the TON blockchain
public struct TonWalletTransactionTypeTelegramGiftDelisting: Codable, Equatable, Hashable {

    /// The cost of the action including refunds, in the smallest units of TON Grams; negative for outgoing transactions
    public let amount: TdInt64

    /// The NFT removed from sale; may be null if unknown
    public let nft: TonNft?


    public init(
        amount: TdInt64,
        nft: TonNft?
    ) {
        self.amount = amount
        self.nft = nft
    }
}

/// An offer to buy a Telegram gift was created on the TON blockchain and the funds were placed in escrow
public struct TonWalletTransactionTypeTelegramGiftOfferCreation: Codable, Equatable, Hashable {

    /// The total amount placed in escrow, including the price, the service fee, and the rent and execution fees, in the smallest units of TON Grams
    public let amount: TdInt64

    /// Address of the seller on the TON blockchain; may be empty if unknown
    public let counterpartyAddress: String

    /// Point in time (Unix timestamp) when the offer expires; 0 if unknown
    public let expirationDate: Int

    /// The NFT for which the offer was created; may be null if unknown
    public let nft: TonNft?

    /// Address of the smart contract of the offer on the TON blockchain; the same for all transactions related to the offer
    public let offerAddress: String

    /// The offered price for the NFT without the service fee and blockchain fees, in the smallest units of TON Grams
    public let price: TdInt64

    /// The service fee for the offer, in the smallest units of TON Grams; included in amount
    public let serviceFeeAmount: TdInt64


    public init(
        amount: TdInt64,
        counterpartyAddress: String,
        expirationDate: Int,
        nft: TonNft?,
        offerAddress: String,
        price: TdInt64,
        serviceFeeAmount: TdInt64
    ) {
        self.amount = amount
        self.counterpartyAddress = counterpartyAddress
        self.expirationDate = expirationDate
        self.nft = nft
        self.offerAddress = offerAddress
        self.price = price
        self.serviceFeeAmount = serviceFeeAmount
    }
}

/// An offer to buy a Telegram gift was accepted on the TON blockchain. The buyer received the NFT and the seller received the price
public struct TonWalletTransactionTypeTelegramGiftOfferAcceptance: Codable, Equatable, Hashable {

    /// Address of the other party on the TON blockchain: the seller for the buyer and the buyer for the seller
    public let counterpartyAddress: String

    /// True, if the current user is the buyer of the NFT; otherwise, the current user is the seller of the NFT
    public let isBuyer: Bool

    /// The NFT for which the offer was created; may be null if unknown
    public let nft: TonNft?

    /// Address of the smart contract of the offer on the TON blockchain; the same for all transactions related to the offer
    public let offerAddress: String

    /// The price of the NFT without the service fee and blockchain fees, in the smallest units of TON Grams
    public let price: TdInt64

    /// The service fee for the offer, in the smallest units of TON Grams
    public let serviceFeeAmount: TdInt64


    public init(
        counterpartyAddress: String,
        isBuyer: Bool,
        nft: TonNft?,
        offerAddress: String,
        price: TdInt64,
        serviceFeeAmount: TdInt64
    ) {
        self.counterpartyAddress = counterpartyAddress
        self.isBuyer = isBuyer
        self.nft = nft
        self.offerAddress = offerAddress
        self.price = price
        self.serviceFeeAmount = serviceFeeAmount
    }
}

/// An offer to buy a Telegram gift was canceled by the buyer on the TON blockchain
public struct TonWalletTransactionTypeTelegramGiftOfferCancellation: Codable, Equatable, Hashable {

    /// Address of the seller on the TON blockchain; may be empty if unknown
    public let counterpartyAddress: String

    /// The fine for the cancellation of the offer, in the smallest units of TON Grams; -1 if unknown
    public let fineAmount: TdInt64

    /// The NFT for which the offer was created; may be null if unknown
    public let nft: TonNft?

    /// Address of the smart contract of the offer on the TON blockchain; the same for all transactions related to the offer
    public let offerAddress: String

    /// The offered price for the NFT without the service fee and blockchain fees, in the smallest units of TON Grams; 0 if unknown
    public let price: TdInt64

    /// The amount returned to the buyer, in the smallest units of TON Grams
    public let refundAmount: TdInt64


    public init(
        counterpartyAddress: String,
        fineAmount: TdInt64,
        nft: TonNft?,
        offerAddress: String,
        price: TdInt64,
        refundAmount: TdInt64
    ) {
        self.counterpartyAddress = counterpartyAddress
        self.fineAmount = fineAmount
        self.nft = nft
        self.offerAddress = offerAddress
        self.price = price
        self.refundAmount = refundAmount
    }
}

/// An offer to buy a Telegram gift was declined by the owner of the NFT or canceled by Telegram on the TON blockchain
public struct TonWalletTransactionTypeTelegramGiftOfferDecline: Codable, Equatable, Hashable {

    /// Address of the seller on the TON blockchain; may be empty if unknown
    public let counterpartyAddress: String

    /// The NFT for which the offer was created; may be null if unknown
    public let nft: TonNft?

    /// Address of the smart contract of the offer on the TON blockchain; the same for all transactions related to the offer
    public let offerAddress: String

    /// The offered price for the NFT without the service fee and blockchain fees, in the smallest units of TON Grams; 0 if unknown
    public let price: TdInt64

    /// The amount returned to the buyer, in the smallest units of TON Grams
    public let refundAmount: TdInt64


    public init(
        counterpartyAddress: String,
        nft: TonNft?,
        offerAddress: String,
        price: TdInt64,
        refundAmount: TdInt64
    ) {
        self.counterpartyAddress = counterpartyAddress
        self.nft = nft
        self.offerAddress = offerAddress
        self.price = price
        self.refundAmount = refundAmount
    }
}

/// An offer to buy a Telegram gift has expired on the TON blockchain
public struct TonWalletTransactionTypeTelegramGiftOfferExpiration: Codable, Equatable, Hashable {

    /// Address of the seller on the TON blockchain; may be empty if unknown
    public let counterpartyAddress: String

    /// The NFT for which the offer was created; may be null if unknown
    public let nft: TonNft?

    /// Address of the smart contract of the offer on the TON blockchain; the same for all transactions related to the offer
    public let offerAddress: String

    /// The offered price for the NFT without the service fee and blockchain fees, in the smallest units of TON Grams; 0 if unknown
    public let price: TdInt64

    /// The amount returned to the buyer, in the smallest units of TON Grams
    public let refundAmount: TdInt64


    public init(
        counterpartyAddress: String,
        nft: TonNft?,
        offerAddress: String,
        price: TdInt64,
        refundAmount: TdInt64
    ) {
        self.counterpartyAddress = counterpartyAddress
        self.nft = nft
        self.offerAddress = offerAddress
        self.price = price
        self.refundAmount = refundAmount
    }
}

