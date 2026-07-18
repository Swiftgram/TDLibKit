//
//  Audios.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-022d6020
//  https://github.com/tdlib/td/tree/022d6020
//

import Foundation


/// Contains a list of audio files
public struct Audios: Codable, Equatable, Hashable {

    /// List of audio files
    public let audios: [Audio]

    /// Approximate total number of audio files found
    public let totalCount: Int


    public init(
        audios: [Audio],
        totalCount: Int
    ) {
        self.audios = audios
        self.totalCount = totalCount
    }
}

