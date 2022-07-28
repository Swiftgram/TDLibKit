//
//  ChatPhotoInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains basic information about the photo of a chat
public struct ChatPhotoInfo: Codable, Equatable {

    /// A big (640x640) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed
    public let big: File

    /// True, if the photo has animated variant
    public let hasAnimation: Bool

    /// Chat photo minithumbnail; may be null
    public let minithumbnail: Minithumbnail?

    /// A small (160x160) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed
    public let small: File


    public init(
        big: File,
        hasAnimation: Bool,
        minithumbnail: Minithumbnail?,
        small: File
    ) {
        self.big = big
        self.hasAnimation = hasAnimation
        self.minithumbnail = minithumbnail
        self.small = small
    }
}

