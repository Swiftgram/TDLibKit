//
//  GetSupergroup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-64264b0f
//  https://github.com/tdlib/td/tree/64264b0f
//

import Foundation


/// Returns information about a supergroup or a channel by its identifier. This is an offline request if the current user is not a bot
public struct GetSupergroup: Codable, Equatable, Hashable {

    /// Supergroup or channel identifier
    public let supergroupId: Int64?


    public init(supergroupId: Int64?) {
        self.supergroupId = supergroupId
    }
}

