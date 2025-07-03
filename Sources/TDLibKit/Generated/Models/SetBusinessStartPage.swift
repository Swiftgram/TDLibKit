//
//  SetBusinessStartPage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
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

