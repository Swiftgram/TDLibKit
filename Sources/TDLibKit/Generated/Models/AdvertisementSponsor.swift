//
//  AdvertisementSponsor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
//

import Foundation


/// Information about the sponsor of an advertisement
public struct AdvertisementSponsor: Codable, Equatable, Hashable {

    /// Additional optional information about the sponsor to be shown along with the advertisement
    public let info: String

    /// Photo of the sponsor; may be null if must not be shown
    public let photo: Photo?

    /// URL of the sponsor to be opened when the advertisement is clicked
    public let url: String


    public init(
        info: String,
        photo: Photo?,
        url: String
    ) {
        self.info = info
        self.photo = photo
        self.url = url
    }
}

