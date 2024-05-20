//
//  CreateSupergroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns an existing chat corresponding to a known supergroup or channel
public struct CreateSupergroupChat: Codable, Equatable, Hashable {

    /// Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect
    public let force: Bool?

    /// Supergroup or channel identifier
    public let supergroupId: Int64?


    public init(
        force: Bool?,
        supergroupId: Int64?
    ) {
        self.force = force
        self.supergroupId = supergroupId
    }
}

