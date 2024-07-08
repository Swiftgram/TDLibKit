//
//  GetBusinessConnection.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.33-cb164927
//  https://github.com/tdlib/td/tree/cb164927
//

import Foundation


/// Returns information about a business connection by its identifier; for bots only
public struct GetBusinessConnection: Codable, Equatable, Hashable {

    /// Identifier of the business connection to return
    public let connectionId: String?


    public init(connectionId: String?) {
        self.connectionId = connectionId
    }
}

