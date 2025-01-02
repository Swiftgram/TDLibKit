//
//  Animations.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Represents a list of animations
public struct Animations: Codable, Equatable, Hashable {

    /// List of animations
    public let animations: [Animation]


    public init(animations: [Animation]) {
        self.animations = animations
    }
}

