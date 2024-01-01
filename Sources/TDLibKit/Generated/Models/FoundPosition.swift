//
//  FoundPosition.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-d963044e
//  https://github.com/tdlib/td/tree/d963044e
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

