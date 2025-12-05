//
//  CanSendGiftResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Describes whether a gift can be sent now by the current user
public indirect enum CanSendGiftResult: Codable, Equatable, Hashable {

    /// The gift can be sent now by the current user
    case canSendGiftResultOk

    /// The gift can't be sent now by the current user
    case canSendGiftResultFail(CanSendGiftResultFail)


    private enum Kind: String, Codable {
        case canSendGiftResultOk
        case canSendGiftResultFail
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .canSendGiftResultOk:
            self = .canSendGiftResultOk
        case .canSendGiftResultFail:
            let value = try CanSendGiftResultFail(from: decoder)
            self = .canSendGiftResultFail(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .canSendGiftResultOk:
            try container.encode(Kind.canSendGiftResultOk, forKey: .type)
        case .canSendGiftResultFail(let value):
            try container.encode(Kind.canSendGiftResultFail, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The gift can't be sent now by the current user
public struct CanSendGiftResultFail: Codable, Equatable, Hashable {

    /// Reason to be shown to the user
    public let reason: FormattedText


    public init(reason: FormattedText) {
        self.reason = reason
    }
}

