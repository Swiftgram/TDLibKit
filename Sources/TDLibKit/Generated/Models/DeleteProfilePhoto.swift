//
//  DeleteProfilePhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-1a50ec47
//  https://github.com/tdlib/td/tree/1a50ec47
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

