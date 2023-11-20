//
//  GetSupergroupFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
//

import Foundation


/// Returns full information about a supergroup or a channel by its identifier, cached for up to 1 minute
public struct GetSupergroupFullInfo: Codable, Equatable, Hashable {

    /// Supergroup or channel identifier
    public let supergroupId: Int64?


    public init(supergroupId: Int64?) {
        self.supergroupId = supergroupId
    }
}

