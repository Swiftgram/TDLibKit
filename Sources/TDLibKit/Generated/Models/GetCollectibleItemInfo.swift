//
//  GetCollectibleItemInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Returns information about a given collectible item that was purchased at https://fragment.com
public struct GetCollectibleItemInfo: Codable, Equatable, Hashable {

    /// Type of the collectible item. The item must be used by a user and must be visible to the current user
    public let type: CollectibleItemType?


    public init(type: CollectibleItemType?) {
        self.type = type
    }
}

