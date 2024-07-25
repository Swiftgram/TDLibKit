//
//  FoundPosition.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.33-97ded010
//  https://github.com/tdlib/td/tree/97ded010
//

import Foundation


/// Contains 0-based match position
public struct FoundPosition: Codable, Equatable, Hashable {

    /// The position of the match
    public let position: Int


    public init(position: Int) {
        self.position = position
    }
}

