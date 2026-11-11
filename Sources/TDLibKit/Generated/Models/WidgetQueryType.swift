//
//  WidgetQueryType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-1f390d90
//  https://github.com/tdlib/td/tree/1f390d90
//

import Foundation


/// Describes type of a widget query
public indirect enum WidgetQueryType: Codable, Equatable, Hashable {

    /// The query contains data for the bot
    case widgetQueryTypeData(WidgetQueryTypeData)

    /// The query contains data signed by a TON wallet of the user that sends the query
    case widgetQueryTypeSignData(WidgetQueryTypeSignData)

    /// The query notifies the bot about a transaction sent from a TON wallet of the user that sends the query
    case widgetQueryTypeSentTransaction(WidgetQueryTypeSentTransaction)


    private enum Kind: String, Codable {
        case widgetQueryTypeData
        case widgetQueryTypeSignData
        case widgetQueryTypeSentTransaction
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .widgetQueryTypeData:
            let value = try WidgetQueryTypeData(from: decoder)
            self = .widgetQueryTypeData(value)
        case .widgetQueryTypeSignData:
            let value = try WidgetQueryTypeSignData(from: decoder)
            self = .widgetQueryTypeSignData(value)
        case .widgetQueryTypeSentTransaction:
            let value = try WidgetQueryTypeSentTransaction(from: decoder)
            self = .widgetQueryTypeSentTransaction(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .widgetQueryTypeData(let value):
            try container.encode(Kind.widgetQueryTypeData, forKey: .type)
            try value.encode(to: encoder)
        case .widgetQueryTypeSignData(let value):
            try container.encode(Kind.widgetQueryTypeSignData, forKey: .type)
            try value.encode(to: encoder)
        case .widgetQueryTypeSentTransaction(let value):
            try container.encode(Kind.widgetQueryTypeSentTransaction, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The query contains data for the bot
public struct WidgetQueryTypeData: Codable, Equatable, Hashable {

    /// True, if the TON wallet card of the user that sends the query is sent to the bot along with the query
    public let withWallet: Bool


    public init(withWallet: Bool) {
        self.withWallet = withWallet
    }
}

/// The query contains data signed by a TON wallet of the user that sends the query
public struct WidgetQueryTypeSignData: Codable, Equatable, Hashable {

    /// JSON-serialized signed data
    public let signData: String

    /// The wallet that signed the data
    public let wallet: WidgetQueryWallet


    public init(
        signData: String,
        wallet: WidgetQueryWallet
    ) {
        self.signData = signData
        self.wallet = wallet
    }
}

/// The query notifies the bot about a transaction sent from a TON wallet of the user that sends the query
public struct WidgetQueryTypeSentTransaction: Codable, Equatable, Hashable {

    /// Value of msg_hash of the transaction
    public let msgHash: String

    /// The wallet from which the transaction was sent
    public let wallet: WidgetQueryWallet


    public init(
        msgHash: String,
        wallet: WidgetQueryWallet
    ) {
        self.msgHash = msgHash
        self.wallet = wallet
    }
}

