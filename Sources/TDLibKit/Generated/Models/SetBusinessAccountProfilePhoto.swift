//
//  SetBusinessAccountProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Changes a profile photo of a business account; for bots only
public struct SetBusinessAccountProfilePhoto: Codable, Equatable, Hashable {

    /// Unique identifier of business connection
    public let businessConnectionId: String?

    /// Pass true to set the public photo, which will be visible even if the main photo is hidden by privacy settings
    public let isPublic: Bool?

    /// Profile photo to set; pass null to remove the photo
    public let photo: InputChatPhoto?


    public init(
        businessConnectionId: String?,
        isPublic: Bool?,
        photo: InputChatPhoto?
    ) {
        self.businessConnectionId = businessConnectionId
        self.isPublic = isPublic
        self.photo = photo
    }
}

