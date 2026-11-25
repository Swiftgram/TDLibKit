//
//  SetBusinessStartPage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Changes the business start page of the current user. Requires a Telegram Business subscription
public struct SetBusinessStartPage: Codable, Equatable, Hashable {

    /// The new start page of the business; pass null to remove the custom start page
    public let startPage: InputBusinessStartPage?


    public init(startPage: InputBusinessStartPage?) {
        self.startPage = startPage
    }
}

