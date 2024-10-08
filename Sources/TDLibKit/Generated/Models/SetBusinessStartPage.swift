//
//  SetBusinessStartPage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-6dae0a56
//  https://github.com/tdlib/td/tree/6dae0a56
//

import Foundation


/// Changes the business start page of the current user. Requires Telegram Business subscription
public struct SetBusinessStartPage: Codable, Equatable, Hashable {

    /// The new start page of the business; pass null to remove custom start page
    public let startPage: InputBusinessStartPage?


    public init(startPage: InputBusinessStartPage?) {
        self.startPage = startPage
    }
}

