//
//  ChatMembers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Contains a list of chat members
public struct ChatMembers: Codable, Equatable, Hashable {

    /// A list of chat members
    public let members: [ChatMember]

    /// Approximate total number of chat members found
    public let totalCount: Int


    public init(
        members: [ChatMember],
        totalCount: Int
    ) {
        self.members = members
        self.totalCount = totalCount
    }
}

