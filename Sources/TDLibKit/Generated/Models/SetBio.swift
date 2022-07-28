//
//  SetBio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Changes the bio of the current user
public struct SetBio: Codable, Equatable {

    /// The new value of the user bio; 0-GetOption("bio_length_max") characters without line feeds
    public let bio: String?


    public init(bio: String?) {
        self.bio = bio
    }
}

