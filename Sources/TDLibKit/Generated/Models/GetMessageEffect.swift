//
//  GetMessageEffect.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-63c7d030
//  https://github.com/tdlib/td/tree/63c7d030
//

import Foundation


/// Returns information about a message effect. Returns a 404 error if the effect is not found
public struct GetMessageEffect: Codable, Equatable, Hashable {

    /// Unique identifier of the effect
    public let effectId: TdInt64?


    public init(effectId: TdInt64?) {
        self.effectId = effectId
    }
}

