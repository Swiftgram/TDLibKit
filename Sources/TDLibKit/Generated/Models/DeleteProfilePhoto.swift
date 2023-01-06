//
//  DeleteProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-19cde80f
//  https://github.com/tdlib/td/tree/19cde80f
//

import Foundation


/// Deletes a profile photo
public struct DeleteProfilePhoto: Codable, Equatable {

    /// Identifier of the profile photo to delete
    public let profilePhotoId: TdInt64?


    public init(profilePhotoId: TdInt64?) {
        self.profilePhotoId = profilePhotoId
    }
}

