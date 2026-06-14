//
//  SuggestUserProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
//

import Foundation


/// Suggests a profile photo to another regular user with common messages and allowing non-paid messages
public struct SuggestUserProfilePhoto: Codable, Equatable, Hashable {

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

