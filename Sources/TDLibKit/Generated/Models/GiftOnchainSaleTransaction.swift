//
//  GiftOnchainSaleTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Describes a transaction that must be sent from the TON wallet of the current user to buy an upgraded gift on-chain,
public indirect enum GiftOnchainSaleTransaction: Codable, Equatable, Hashable {

    /// The transaction for a gift sold on-chain on Fragment. The transaction consists of one message, which must be sent to nft_address with gram_amount attached and with payload as the message body. Use sendTonWalletTransaction to send the transaction
    case giftOnchainSaleTransactionFragment(GiftOnchainSaleTransactionFragment)

    /// The transaction for a gift sold on-chain using a fixed-price sale contract. All messages must be signed and sent in one transfer in the specified order. Use sendTonWalletTransaction with regular_transaction_data and gasless_transaction_data created from messages and gasless_messages respectively to send the transaction
    case giftOnchainSaleTransactionFixedPrice(GiftOnchainSaleTransactionFixedPrice)


    private enum Kind: String, Codable {
        case giftOnchainSaleTransactionFragment
        case giftOnchainSaleTransactionFixedPrice
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .giftOnchainSaleTransactionFragment:
            let value = try GiftOnchainSaleTransactionFragment(from: decoder)
            self = .giftOnchainSaleTransactionFragment(value)
        case .giftOnchainSaleTransactionFixedPrice:
            let value = try GiftOnchainSaleTransactionFixedPrice(from: decoder)
            self = .giftOnchainSaleTransactionFixedPrice(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .giftOnchainSaleTransactionFragment(let value):
            try container.encode(Kind.giftOnchainSaleTransactionFragment, forKey: .type)
            try value.encode(to: encoder)
        case .giftOnchainSaleTransactionFixedPrice(let value):
            try container.encode(Kind.giftOnchainSaleTransactionFixedPrice, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The transaction for a gift sold on-chain on Fragment. The transaction consists of one message, which must be sent to nft_address with gram_amount attached and with payload as the message body. Use sendTonWalletTransaction to send the transaction
public struct GiftOnchainSaleTransactionFragment: Codable, Equatable, Hashable {

    /// The amount that must be sent with the transaction, in the smallest units of TON Grams
    public let gramAmount: TdInt64

    /// True, if the transaction can be sent as a gasless transfer
    public let isGaslessTransferAvailable: Bool

    /// Address on the TON blockchain to which the transaction must be sent
    public let nftAddress: String

    /// Body of the transaction message; may be empty
    public let payload: Data


    public init(
        gramAmount: TdInt64,
        isGaslessTransferAvailable: Bool,
        nftAddress: String,
        payload: Data
    ) {
        self.gramAmount = gramAmount
        self.isGaslessTransferAvailable = isGaslessTransferAvailable
        self.nftAddress = nftAddress
        self.payload = payload
    }
}

/// The transaction for a gift sold on-chain using a fixed-price sale contract. All messages must be signed and sent in one transfer in the specified order. Use sendTonWalletTransaction with regular_transaction_data and gasless_transaction_data created from messages and gasless_messages respectively to send the transaction
public struct GiftOnchainSaleTransactionFixedPrice: Codable, Equatable, Hashable {

    /// The messages that must be sent for a gasless transfer instead of messages; empty if gasless transfer isn't available
    public let gaslessMessages: [TonWalletMessage]

    /// The messages that must be sent for a regular transfer
    public let messages: [TonWalletMessage]

    /// Address of the sale smart contract on the TON blockchain
    public let saleAddress: String


    public init(
        gaslessMessages: [TonWalletMessage],
        messages: [TonWalletMessage],
        saleAddress: String
    ) {
        self.gaslessMessages = gaslessMessages
        self.messages = messages
        self.saleAddress = saleAddress
    }
}

