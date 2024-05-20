//
//  NotificationType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains detailed information about a notification
public indirect enum NotificationType: Codable, Equatable, Hashable {

    /// New message was received
    case notificationTypeNewMessage(NotificationTypeNewMessage)

    /// New secret chat was created
    case notificationTypeNewSecretChat

    /// New call was received
    case notificationTypeNewCall(NotificationTypeNewCall)

    /// New message was received through a push notification
    case notificationTypeNewPushMessage(NotificationTypeNewPushMessage)


    private enum Kind: String, Codable {
        case notificationTypeNewMessage
        case notificationTypeNewSecretChat
        case notificationTypeNewCall
        case notificationTypeNewPushMessage
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .notificationTypeNewMessage:
            let value = try NotificationTypeNewMessage(from: decoder)
            self = .notificationTypeNewMessage(value)
        case .notificationTypeNewSecretChat:
            self = .notificationTypeNewSecretChat
        case .notificationTypeNewCall:
            let value = try NotificationTypeNewCall(from: decoder)
            self = .notificationTypeNewCall(value)
        case .notificationTypeNewPushMessage:
            let value = try NotificationTypeNewPushMessage(from: decoder)
            self = .notificationTypeNewPushMessage(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .notificationTypeNewMessage(let value):
            try container.encode(Kind.notificationTypeNewMessage, forKey: .type)
            try value.encode(to: encoder)
        case .notificationTypeNewSecretChat:
            try container.encode(Kind.notificationTypeNewSecretChat, forKey: .type)
        case .notificationTypeNewCall(let value):
            try container.encode(Kind.notificationTypeNewCall, forKey: .type)
            try value.encode(to: encoder)
        case .notificationTypeNewPushMessage(let value):
            try container.encode(Kind.notificationTypeNewPushMessage, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// New message was received
public struct NotificationTypeNewMessage: Codable, Equatable, Hashable {

    /// The message
    public let message: Message

    /// True, if message content must be displayed in notifications
    public let showPreview: Bool


    public init(
        message: Message,
        showPreview: Bool
    ) {
        self.message = message
        self.showPreview = showPreview
    }
}

/// New call was received
public struct NotificationTypeNewCall: Codable, Equatable, Hashable {

    /// Call identifier
    public let callId: Int


    public init(callId: Int) {
        self.callId = callId
    }
}

/// New message was received through a push notification
public struct NotificationTypeNewPushMessage: Codable, Equatable, Hashable {

    /// Push message content
    public let content: PushMessageContent

    /// True, if the message is outgoing
    public let isOutgoing: Bool

    /// The message identifier. The message will not be available in the chat history, but the identifier can be used in viewMessages, or as a message to be replied in the same chat
    public let messageId: Int64

    /// Identifier of the sender of the message. Corresponding user or chat may be inaccessible
    public let senderId: MessageSender

    /// Name of the sender
    public let senderName: String


    public init(
        content: PushMessageContent,
        isOutgoing: Bool,
        messageId: Int64,
        senderId: MessageSender,
        senderName: String
    ) {
        self.content = content
        self.isOutgoing = isOutgoing
        self.messageId = messageId
        self.senderId = senderId
        self.senderName = senderName
    }
}

