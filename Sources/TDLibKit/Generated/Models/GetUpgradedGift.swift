//
//  GetUpgradedGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-025086e3
//  https://github.com/tdlib/td/tree/025086e3
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

