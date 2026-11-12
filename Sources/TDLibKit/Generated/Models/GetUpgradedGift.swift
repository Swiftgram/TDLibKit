//
//  GetUpgradedGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Returns information about an upgraded gift by its name
public struct GetUpgradedGift: Codable, Equatable, Hashable {

    /// Unique name of the upgraded gift
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

