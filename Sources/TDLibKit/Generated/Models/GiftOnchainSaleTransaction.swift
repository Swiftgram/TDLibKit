//
//  GiftOnChainSaleTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Describes a transaction that must be sent from the TON wallet of the current user to buy an upgraded gift on-chain,
public indirect enum GiftOnChainSaleTransaction: Codable, Equatable, Hashable {

    /// The transaction for a gift sold on-chain on Fragment. The transaction consists of one message, which must be sent to nft_address with gram_amount attached and with payload as the message body. Use sendTonWalletTransaction to send the transaction
    case giftOnChainSaleTransactionFragment(GiftOnChainSaleTransactionFragment)

    /// The transaction for a gift sold on-chain using a fixed-price sale contract. All messages must be signed and sent in one transfer in the specified order. Use sendTonWalletTransaction with regular_transaction_data and gasless_transaction_data created from messages and gasless_messages respectively to send the transaction
    case giftOnChainSaleTransactionFixedPrice(GiftOnChainSaleTransactionFixedPrice)


    private enum Kind: String, Codable {
        case giftOnChainSaleTransactionFragment
        case giftOnChainSaleTransactionFixedPrice
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .giftOnChainSaleTransactionFragment:
            let value = try GiftOnChainSaleTransactionFragment(from: decoder)
            self = .giftOnChainSaleTransactionFragment(value)
        case .giftOnChainSaleTransactionFixedPrice:
            let value = try GiftOnChainSaleTransactionFixedPrice(from: decoder)
            self = .giftOnChainSaleTransactionFixedPrice(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .giftOnChainSaleTransactionFragment(let value):
            try container.encode(Kind.giftOnChainSaleTransactionFragment, forKey: .type)
            try value.encode(to: encoder)
        case .giftOnChainSaleTransactionFixedPrice(let value):
            try container.encode(Kind.giftOnChainSaleTransactionFixedPrice, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The transaction for a gift sold on-chain on Fragment. The transaction consists of one message, which must be sent to nft_address with gram_amount attached and with payload as the message body. Use sendTonWalletTransaction to send the transaction
public struct GiftOnChainSaleTransactionFragment: Codable, Equatable, Hashable {

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
public struct GiftOnChainSaleTransactionFixedPrice: Codable, Equatable, Hashable {

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

