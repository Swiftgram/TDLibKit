//
//  MessageSponsor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-b4c07559
//  https://github.com/tdlib/td/tree/b4c07559
//

import Foundation


/// Information about the sponsor of a message
public struct MessageSponsor: Codable, Equatable, Hashable {

    /// Additional optional information about the sponsor to be shown along with the message
    public let info: String

    /// Photo of the sponsor; may be null if must not be shown
    public let photo: ChatPhotoInfo?

    /// Type of the sponsor
    public let type: MessageSponsorType


    public init(
        info: String,
        photo: ChatPhotoInfo?,
        type: MessageSponsorType
    ) {
        self.info = info
        self.photo = photo
        self.type = type
    }
}

