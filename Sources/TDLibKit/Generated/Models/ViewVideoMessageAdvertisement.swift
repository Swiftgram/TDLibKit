//
//  ViewVideoMessageAdvertisement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-fa8294b4
//  https://github.com/tdlib/td/tree/fa8294b4
//

import Foundation


/// Informs TDLib that the user viewed a video message advertisement
public struct ViewVideoMessageAdvertisement: Codable, Equatable, Hashable {

    /// Unique identifier of the advertisement
    public let advertisementUniqueId: Int64?


    public init(advertisementUniqueId: Int64?) {
        self.advertisementUniqueId = advertisementUniqueId
    }
}

