//
//  SetUserPersonalProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-a08b1f91
//  https://github.com/tdlib/td/tree/a08b1f91
//

import Foundation


/// Changes a personal profile photo of a contact user
public struct SetUserPersonalProfilePhoto: Codable, Equatable {

    /// Profile photo to set; pass null to delete the photo; inputChatPhotoPrevious isn't supported in this function
    public let photo: InputChatPhoto?

    /// User identifier
    public let userId: Int64?


    public init(
        photo: InputChatPhoto?,
        userId: Int64?
    ) {
        self.photo = photo
        self.userId = userId
    }
}

