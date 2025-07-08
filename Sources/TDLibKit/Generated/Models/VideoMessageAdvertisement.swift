//
//  VideoMessageAdvertisement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Describes an advertisent to be shown while a video from a message is watched
public struct VideoMessageAdvertisement: Codable, Equatable, Hashable {

    /// If non-empty, additional information about the sponsored message to be shown along with the message
    public let additionalInfo: String

    /// True, if the advertisement can be reported to Telegram moderators through reportVideoMessageAdvertisement
    public let canBeReported: Bool

    /// The maximum amount of time the advertisement must be dispalyed before it must be automatically hidden, in seconds
    public let maxDisplayDuration: Int

    /// The minimum amount of time the advertisement must be dispalyed before it can be hidden by the user, in seconds
    public let minDisplayDuration: Int

    /// Information about the sponsor of the advertisement
    public let sponsor: AdvertisementSponsor

    /// Text of the advertisement
    public let text: String

    /// Title of the sponsored message
    public let title: String

    /// Unique identifier of this result
    public let uniqueId: Int64


    public init(
        additionalInfo: String,
        canBeReported: Bool,
        maxDisplayDuration: Int,
        minDisplayDuration: Int,
        sponsor: AdvertisementSponsor,
        text: String,
        title: String,
        uniqueId: Int64
    ) {
        self.additionalInfo = additionalInfo
        self.canBeReported = canBeReported
        self.maxDisplayDuration = maxDisplayDuration
        self.minDisplayDuration = minDisplayDuration
        self.sponsor = sponsor
        self.text = text
        self.title = title
        self.uniqueId = uniqueId
    }
}

