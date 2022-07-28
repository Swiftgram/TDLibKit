//
//  CreateBasicGroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Returns an existing chat corresponding to a known basic group
public struct CreateBasicGroupChat: Codable, Equatable {

    /// Basic group identifier
    public let basicGroupId: Int64?

    /// Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect
    public let force: Bool?


    public init(
        basicGroupId: Int64?,
        force: Bool?
    ) {
        self.basicGroupId = basicGroupId
        self.force = force
    }
}

