//
//  ReportVideoMessageAdvertisement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Reports a video message advertisement to Telegram moderators
public struct ReportVideoMessageAdvertisement: Codable, Equatable, Hashable {

    /// Unique identifier of the advertisement
    public let advertisementUniqueId: Int64?

    /// Option identifier chosen by the user; leave empty for the initial request
    public let optionId: Data?


    public init(
        advertisementUniqueId: Int64?,
        optionId: Data?
    ) {
        self.advertisementUniqueId = advertisementUniqueId
        self.optionId = optionId
    }
}

