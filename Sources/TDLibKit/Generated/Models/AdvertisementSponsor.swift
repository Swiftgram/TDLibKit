//
//  AdvertisementSponsor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
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

