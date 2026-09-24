//
//  ClickVideoMessageAdvertisement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-8b765a16
//  https://github.com/tdlib/td/tree/8b765a16
//

import Foundation


/// Informs TDLib that the user clicked a video message advertisement
public struct ClickVideoMessageAdvertisement: Codable, Equatable, Hashable {

    /// Unique identifier of the advertisement
    public let advertisementUniqueId: Int64?


    public init(advertisementUniqueId: Int64?) {
        self.advertisementUniqueId = advertisementUniqueId
    }
}

