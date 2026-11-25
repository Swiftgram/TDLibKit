//
//  SetBio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Changes the bio of the current user
public struct SetBio: Codable, Equatable, Hashable {

    /// The new value of the user bio; 0-getOption("bio_length_max") characters without line feeds
    public let bio: String?


    public init(bio: String?) {
        self.bio = bio
    }
}

