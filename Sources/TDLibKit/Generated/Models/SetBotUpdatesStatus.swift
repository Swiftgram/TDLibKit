//
//  SetBotUpdatesStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots only
public struct SetBotUpdatesStatus: Codable, Equatable {

    /// The last error message
    public let errorMessage: String?

    /// The number of pending updates
    public let pendingUpdateCount: Int?


    public init(
        errorMessage: String?,
        pendingUpdateCount: Int?
    ) {
        self.errorMessage = errorMessage
        self.pendingUpdateCount = pendingUpdateCount
    }
}

