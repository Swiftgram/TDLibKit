//
//  ChatBoost.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-721300bc
//  https://github.com/tdlib/td/tree/721300bc
//

import Foundation


/// Describes a boost applied to a chat
public struct ChatBoost: Codable, Equatable, Hashable, Identifiable {

    /// The number of identical boosts applied
    public let count: Int

    /// Point in time (Unix timestamp) when the boost will expire
    public let expirationDate: Int

    /// Unique identifier of the boost
    public let id: String

    /// Source of the boost
    public let source: ChatBoostSource

    /// Point in time (Unix timestamp) when the chat was boosted
    public let startDate: Int


    public init(
        count: Int,
        expirationDate: Int,
        id: String,
        source: ChatBoostSource,
        startDate: Int
    ) {
        self.count = count
        self.expirationDate = expirationDate
        self.id = id
        self.source = source
        self.startDate = startDate
    }
}

