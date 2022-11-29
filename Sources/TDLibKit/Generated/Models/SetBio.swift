//
//  SetBio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-d581e049
//  https://github.com/tdlib/td/tree/d581e049
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

