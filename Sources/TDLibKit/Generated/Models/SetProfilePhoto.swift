//
//  SetProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-906d773d
//  https://github.com/tdlib/td/tree/906d773d
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

