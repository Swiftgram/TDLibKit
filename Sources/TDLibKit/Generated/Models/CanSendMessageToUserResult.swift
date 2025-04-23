//
//  CanSendMessageToUserResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-6e32e56b
//  https://github.com/tdlib/td/tree/6e32e56b
//

import Foundation


/// Describes result of canSendMessageToUser
public indirect enum CanSendMessageToUserResult: Codable, Equatable, Hashable {

    /// The user can be messaged
    case canSendMessageToUserResultOk

    /// The user can be messaged, but the messages are paid
    case canSendMessageToUserResultUserHasPaidMessages(CanSendMessageToUserResultUserHasPaidMessages)

    /// The user can't be messaged, because they are deleted or unknown
    case canSendMessageToUserResultUserIsDeleted

    /// The user can't be messaged, because they restrict new chats with non-contacts
    case canSendMessageToUserResultUserRestrictsNewChats


    private enum Kind: String, Codable {
        case canSendMessageToUserResultOk
        case canSendMessageToUserResultUserHasPaidMessages
        case canSendMessageToUserResultUserIsDeleted
        case canSendMessageToUserResultUserRestrictsNewChats
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .canSendMessageToUserResultOk:
            self = .canSendMessageToUserResultOk
        case .canSendMessageToUserResultUserHasPaidMessages:
            let value = try CanSendMessageToUserResultUserHasPaidMessages(from: decoder)
            self = .canSendMessageToUserResultUserHasPaidMessages(value)
        case .canSendMessageToUserResultUserIsDeleted:
            self = .canSendMessageToUserResultUserIsDeleted
        case .canSendMessageToUserResultUserRestrictsNewChats:
            self = .canSendMessageToUserResultUserRestrictsNewChats
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .canSendMessageToUserResultOk:
            try container.encode(Kind.canSendMessageToUserResultOk, forKey: .type)
        case .canSendMessageToUserResultUserHasPaidMessages(let value):
            try container.encode(Kind.canSendMessageToUserResultUserHasPaidMessages, forKey: .type)
            try value.encode(to: encoder)
        case .canSendMessageToUserResultUserIsDeleted:
            try container.encode(Kind.canSendMessageToUserResultUserIsDeleted, forKey: .type)
        case .canSendMessageToUserResultUserRestrictsNewChats:
            try container.encode(Kind.canSendMessageToUserResultUserRestrictsNewChats, forKey: .type)
        }
    }
}

/// The user can be messaged, but the messages are paid
public struct CanSendMessageToUserResultUserHasPaidMessages: Codable, Equatable, Hashable {

    /// Number of Telegram Stars that must be paid by the current user for each sent message to the user
    public let outgoingPaidMessageStarCount: Int64


    public init(outgoingPaidMessageStarCount: Int64) {
        self.outgoingPaidMessageStarCount = outgoingPaidMessageStarCount
    }
}

