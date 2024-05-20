//
//  MessageSponsor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Information about the sponsor of a message
public struct MessageSponsor: Codable, Equatable, Hashable {

    /// Additional optional information about the sponsor to be shown along with the message
    public let info: String

    /// Photo of the sponsor; may be null if must not be shown
    public let photo: Photo?

    /// URL of the sponsor to be opened when the message is clicked
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

