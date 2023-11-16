//
//  SetUserPersonalProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-aefbf032
//  https://github.com/tdlib/td/tree/aefbf032
//

import Foundation


/// Changes a personal profile photo of a contact user
public struct SetUserPersonalProfilePhoto: Codable, Equatable, Hashable {

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

