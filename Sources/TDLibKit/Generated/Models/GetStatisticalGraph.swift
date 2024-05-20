//
//  GetStatisticalGraph.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Loads an asynchronous or a zoomed in statistical graph
public struct GetStatisticalGraph: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The token for graph loading
    public let token: String?

    /// X-value for zoomed in graph or 0 otherwise
    public let x: Int64?


    public init(
        chatId: Int64?,
        token: String?,
        x: Int64?
    ) {
        self.chatId = chatId
        self.token = token
        self.x = x
    }
}

