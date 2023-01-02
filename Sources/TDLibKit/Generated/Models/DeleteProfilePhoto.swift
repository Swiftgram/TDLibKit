//
//  DeleteProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-cf198484
//  https://github.com/tdlib/td/tree/cf198484
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

