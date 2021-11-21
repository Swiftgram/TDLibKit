//
//  ToggleChatDefaultDisableNotification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-505fed00
//  https://github.com/tdlib/td/tree/505fed00
//

import Foundation


/// Changes the value of the default disable_notification parameter, used when a message is sent to a chat
public struct ToggleChatDefaultDisableNotification: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// New value of default_disable_notification
    public let defaultDisableNotification: Bool?


    public init(
        chatId: Int64?,
        defaultDisableNotification: Bool?
    ) {
        self.chatId = chatId
        self.defaultDisableNotification = defaultDisableNotification
    }
}

