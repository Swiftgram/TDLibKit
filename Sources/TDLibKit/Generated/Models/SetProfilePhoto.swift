//
//  SetProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Changes a profile photo for the current user
public struct SetProfilePhoto: Codable, Equatable, Hashable {

    /// Pass true to set the public photo, which will be visible even if the main photo is hidden by privacy settings
    public let isPublic: Bool?

    /// Profile photo to set
    public let photo: InputChatPhoto?


    public init(
        isPublic: Bool?,
        photo: InputChatPhoto?
    ) {
        self.isPublic = isPublic
        self.photo = photo
    }
}

