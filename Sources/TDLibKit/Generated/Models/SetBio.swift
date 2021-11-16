//
//  SetBio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Changes the bio of the current user
public struct SetBio: Codable {

    /// The new value of the user bio; 0-70 characters without line feeds
    public let bio: String?


    public init(bio: String?) {
        self.bio = bio
    }
}

