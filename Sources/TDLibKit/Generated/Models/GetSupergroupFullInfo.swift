//
//  GetSupergroupFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Returns full information about a supergroup or a channel by its identifier, cached for up to 1 minute
public struct GetSupergroupFullInfo: Codable {

    /// Supergroup or channel identifier
    public let supergroupId: Int


    public init(supergroupId: Int) {
        self.supergroupId = supergroupId
    }
}

