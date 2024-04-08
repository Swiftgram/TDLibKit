//
//  SetBusinessIntro.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.27-d7203eb7
//  https://github.com/tdlib/td/tree/d7203eb7
//

import Foundation


/// Changes the business intro of the current user. Requires Telegram Business subscription
public struct SetBusinessIntro: Codable, Equatable, Hashable {

    /// The new intro of the business; pass null to remove the intro
    public let intro: InputBusinessIntro?


    public init(intro: InputBusinessIntro?) {
        self.intro = intro
    }
}

