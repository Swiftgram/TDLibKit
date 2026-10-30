//
//  TonWalletTransactionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-18d36ada
//  https://github.com/tdlib/td/tree/18d36ada
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

    /// A Telegram gift was minted as a TON NFT or was transferred from Telegram to the wallet or back; peer details aren't available for the transaction
    case tonWalletTransactionTypeTelegramGiftTransfer(TonWalletTransactionTypeTelegramGiftTransfer)

    /// Change of the wallet key
    case tonWalletTransactionTypeKeyChange


    private enum Kind: String, Codable {
        case tonWalletTransactionTypeOnRampDeposit
        case tonWalletTransactionTypeTransfer
        case tonWalletTransactionTypeNftTransfer
        case tonWalletTransactionTypeTelegramGiftTransfer
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
        case .tonWalletTransactionTypeKeyChange:
            try container.encode(Kind.tonWalletTransactionTypeKeyChange, forKey: .type)
        }
    }
}

/// The transaction is a deposit from an on-ramp provider
public struct TonWalletTransactionTypeOnRampDeposit: Codable, Equatable, Hashable {

    /// The amount of received cryptocurrency, in the smallest units of the cryptocurrency
    public let amount: Int64

    /// Name of the on-ramp provider
    public let providerName: String


    public init(
        amount: Int64,
        providerName: String
    ) {
        self.amount = amount
        self.providerName = providerName
    }
}

/// A transfer of TON Grams to or from the wallet
public struct TonWalletTransactionTypeTransfer: Codable, Equatable, Hashable {

    /// The amount of received cryptocurrency, in the smallest units of the cryptocurrency; negative for outgoing transactions
    public let amount: Int64

    /// Comment added to the transaction
    public let comment: String

    /// True, if the comment is encrypted and must be decrypted using the user's private key
    public let isCommentEncrypted: Bool

    /// True, if the fee was paid by Telegram
    public let isGasless: Bool


    public init(
        amount: Int64,
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

/// A Telegram gift was minted as a TON NFT or was transferred from Telegram to the wallet or back; peer details aren't available for the transaction
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

