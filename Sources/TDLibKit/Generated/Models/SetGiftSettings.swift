//
//  SetGiftSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-51743dfd
//  https://github.com/tdlib/td/tree/51743dfd
//

import Foundation


/// Changes settings for gift receiving for the current user
public struct SetGiftSettings: Codable, Equatable, Hashable {

    /// The new settings
    public let settings: GiftSettings?


    public init(settings: GiftSettings?) {
        self.settings = settings
    }
}

