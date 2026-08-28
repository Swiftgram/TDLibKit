//
//  InputPollOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Describes one answer option of a poll to be created
public struct InputPollOption: Codable, Equatable, Hashable {

    /// Option media; pass null if none. Must be one of the following types: inputPollMediaAnimation, inputPollMediaLink, inputPollMediaLocation, inputPollMediaPhoto, inputPollMediaSticker, inputPollMediaVenue, or inputPollMediaVideo without caption
    public let media: InputPollMedia?

    /// Option text; 1-100 characters. Only custom emoji entities are allowed to be added and only by Premium users
    public let text: FormattedText


    public init(
        media: InputPollMedia?,
        text: FormattedText
    ) {
        self.media = media
        self.text = text
    }
}

