//
//  SendWebAppCustomRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Sends a custom request from a Web App
public struct SendWebAppCustomRequest: Codable, Equatable, Hashable {

    /// Identifier of the bot
    public let botUserId: Int64?

    /// The method name
    public let method: String?

    /// JSON-serialized method parameters
    public let parameters: String?


    public init(
        botUserId: Int64?,
        method: String?,
        parameters: String?
    ) {
        self.botUserId = botUserId
        self.method = method
        self.parameters = parameters
    }
}

