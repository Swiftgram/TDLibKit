//
//  DeleteProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.26-586bc784
//  https://github.com/tdlib/td/tree/586bc784
//

import Foundation


/// Deletes a profile photo
public struct DeleteProfilePhoto: Codable, Equatable, Hashable {

    /// Identifier of the profile photo to delete
    public let profilePhotoId: TdInt64?


    public init(profilePhotoId: TdInt64?) {
        self.profilePhotoId = profilePhotoId
    }
}

