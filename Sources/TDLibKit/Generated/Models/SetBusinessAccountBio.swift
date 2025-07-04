//
//  SetBusinessAccountBio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Changes the bio of a business account; for bots only
public struct SetBusinessAccountBio: Codable, Equatable, Hashable {

    /// The new value of the bio; 0-getOption("bio_length_max") characters without line feeds
    public let bio: String?

    /// Unique identifier of business connection
    public let businessConnectionId: String?


    public init(
        bio: String?,
        businessConnectionId: String?
    ) {
        self.bio = bio
        self.businessConnectionId = businessConnectionId
    }
}

