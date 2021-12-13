//
//  SetProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-aa8a4979
//  https://github.com/tdlib/td/tree/aa8a4979
//

import Foundation


/// Changes a profile photo for the current user
public struct SetProfilePhoto: Codable, Equatable {

    /// Profile photo to set
    public let photo: InputChatPhoto?


    public init(photo: InputChatPhoto?) {
        self.photo = photo
    }
}

