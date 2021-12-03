//
//  SetBio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-8d7bda00
//  https://github.com/tdlib/td/tree/8d7bda00
//

import Foundation


/// Changes the bio of the current user
public struct SetBio: Codable, Equatable {

    /// The new value of the user bio; 0-70 characters without line feeds
    public let bio: String?


    public init(bio: String?) {
        self.bio = bio
    }
}

