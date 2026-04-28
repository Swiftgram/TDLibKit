//
//  VideoMessageAdvertisements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8fc2344f
//  https://github.com/tdlib/td/tree/8fc2344f
//

import Foundation


/// Contains a list of advertisements to be shown while a video from a message is watched
public struct VideoMessageAdvertisements: Codable, Equatable, Hashable {

    /// List of advertisements
    public let advertisements: [VideoMessageAdvertisement]

    /// Delay between consecutive advertisements, in seconds
    public let betweenDelay: Int

    /// Delay before the first advertisement is shown, in seconds
    public let startDelay: Int


    public init(
        advertisements: [VideoMessageAdvertisement],
        betweenDelay: Int,
        startDelay: Int
    ) {
        self.advertisements = advertisements
        self.betweenDelay = betweenDelay
        self.startDelay = startDelay
    }
}

