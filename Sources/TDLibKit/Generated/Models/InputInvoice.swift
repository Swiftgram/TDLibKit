//
//  InputInvoice.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes an invoice to process
public indirect enum InputInvoice: Codable, Equatable, Hashable {

    /// An invoice from a message of the type messageInvoice
    case inputInvoiceMessage(InputInvoiceMessage)

    /// An invoice from a link of the type internalLinkTypeInvoice
    case inputInvoiceName(InputInvoiceName)

    /// An invoice for a payment toward Telegram; must not be used in the in-store apps
    case inputInvoiceTelegram(InputInvoiceTelegram)


    private enum Kind: String, Codable {
        case inputInvoiceMessage
        case inputInvoiceName
        case inputInvoiceTelegram
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputInvoiceMessage:
            let value = try InputInvoiceMessage(from: decoder)
            self = .inputInvoiceMessage(value)
        case .inputInvoiceName:
            let value = try InputInvoiceName(from: decoder)
            self = .inputInvoiceName(value)
        case .inputInvoiceTelegram:
            let value = try InputInvoiceTelegram(from: decoder)
            self = .inputInvoiceTelegram(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputInvoiceMessage(let value):
            try container.encode(Kind.inputInvoiceMessage, forKey: .type)
            try value.encode(to: encoder)
        case .inputInvoiceName(let value):
            try container.encode(Kind.inputInvoiceName, forKey: .type)
            try value.encode(to: encoder)
        case .inputInvoiceTelegram(let value):
            try container.encode(Kind.inputInvoiceTelegram, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// An invoice from a message of the type messageInvoice
public struct InputInvoiceMessage: Codable, Equatable, Hashable {

    /// Chat identifier of the message
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

/// An invoice from a link of the type internalLinkTypeInvoice
public struct InputInvoiceName: Codable, Equatable, Hashable {

    /// Name of the invoice
    public let name: String


    public init(name: String) {
        self.name = name
    }
}

/// An invoice for a payment toward Telegram; must not be used in the in-store apps
public struct InputInvoiceTelegram: Codable, Equatable, Hashable {

    /// Transaction purpose
    public let purpose: TelegramPaymentPurpose


    public init(purpose: TelegramPaymentPurpose) {
        self.purpose = purpose
    }
}

