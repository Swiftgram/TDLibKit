//
//  ProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Describes a user profile photo
public struct ProfilePhoto: Codable {

    /// A big (640x640) user profile photo. The file can be downloaded only before the photo is changed
    public let big: File

    /// True, if the photo has animated variant
    public let hasAnimation: Bool

    /// Photo identifier; 0 for an empty photo. Can be used to find a photo in a list of user profile photos
    public let id: TdInt64

    /// User profile photo minithumbnail; may be null
    public let minithumbnail: Minithumbnail?

    /// A small (160x160) user profile photo. The file can be downloaded only before the photo is changed
    public let small: File


    public init(
        big: File,
        hasAnimation: Bool,
        id: TdInt64,
        minithumbnail: Minithumbnail?,
        small: File
    ) {
        self.big = big
        self.hasAnimation = hasAnimation
        self.id = id
        self.minithumbnail = minithumbnail
        self.small = small
    }
}

