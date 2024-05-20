//
//  CanSendMessageToUserResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes result of canSendMessageToUser
public indirect enum CanSendMessageToUserResult: Codable, Equatable, Hashable {

    /// The user can be messaged
    case canSendMessageToUserResultOk

    /// The user can't be messaged, because they are deleted or unknown
    case canSendMessageToUserResultUserIsDeleted

    /// The user can't be messaged, because they restrict new chats with non-contacts
    case canSendMessageToUserResultUserRestrictsNewChats


    private enum Kind: String, Codable {
        case canSendMessageToUserResultOk
        case canSendMessageToUserResultUserIsDeleted
        case canSendMessageToUserResultUserRestrictsNewChats
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .canSendMessageToUserResultOk:
            self = .canSendMessageToUserResultOk
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
        case .canSendMessageToUserResultUserIsDeleted:
            try container.encode(Kind.canSendMessageToUserResultUserIsDeleted, forKey: .type)
        case .canSendMessageToUserResultUserRestrictsNewChats:
            try container.encode(Kind.canSendMessageToUserResultUserRestrictsNewChats, forKey: .type)
        }
    }
}

