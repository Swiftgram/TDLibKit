//
//  CheckAuthenticationBotToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Checks the authentication token of a bot; to log in as a bot. Works only when the current authorization state is authorizationStateWaitPhoneNumber. Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in
public struct CheckAuthenticationBotToken: Codable, Equatable, Hashable {

    /// The bot token
    public let token: String?


    public init(token: String?) {
        self.token = token
    }
}

