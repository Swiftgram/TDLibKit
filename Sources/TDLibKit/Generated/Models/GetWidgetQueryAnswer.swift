//
//  GetWidgetQueryAnswer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ad2c1516
//  https://github.com/tdlib/td/tree/ad2c1516
//

import Foundation


/// Sends a widget query to a bot and returns an answer. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires
public struct GetWidgetQueryAnswer: Codable, Equatable, Hashable {

    /// Identifier of the chat with the message
    public let chatId: Int64?

    /// Data of the query
    public let data: Data?

    /// Identifier of the widget message from which the query originated. The message must not be scheduled
    public let messageId: Int64?

    /// Type of the query
    public let queryType: WidgetQueryType?


    public init(
        chatId: Int64?,
        data: Data?,
        messageId: Int64?,
        queryType: WidgetQueryType?
    ) {
        self.chatId = chatId
        self.data = data
        self.messageId = messageId
        self.queryType = queryType
    }
}

