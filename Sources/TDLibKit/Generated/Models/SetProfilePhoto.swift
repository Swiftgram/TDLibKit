//
//  SetProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Changes a profile photo for the current user
public struct SetProfilePhoto: Codable {

    /// Profile photo to set
    public let photo: InputChatPhoto


    public init(photo: InputChatPhoto) {
        self.photo = photo
    }
}

