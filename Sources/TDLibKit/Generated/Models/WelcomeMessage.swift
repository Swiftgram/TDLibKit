//
//  WelcomeMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Describes a set up welcome message
public struct WelcomeMessage: Codable, Equatable, Hashable, Identifiable {

    /// Content of the welcome message
    public let content: MessageContent

    /// Welcome message identifier; unique for the chat to which the welcome message belongs
    public let id: Int


    public init(
        content: MessageContent,
        id: Int
    ) {
        self.content = content
        self.id = id
    }
}

