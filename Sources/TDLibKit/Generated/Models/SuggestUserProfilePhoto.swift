//
//  SuggestUserProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-0150094c
//  https://github.com/tdlib/td/tree/0150094c
//

import Foundation


/// Suggests a profile photo to another regular user with common messages
public struct SuggestUserProfilePhoto: Codable, Equatable {

    /// Profile photo to suggest; inputChatPhotoPrevious isn't supported in this function
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

