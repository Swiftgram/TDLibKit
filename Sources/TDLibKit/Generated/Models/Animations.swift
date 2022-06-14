//
//  Animations.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-047246f3
//  https://github.com/tdlib/td/tree/047246f3
//

import Foundation


/// Represents a list of animations
public struct Animations: Codable, Equatable {

    /// List of animations
    public let animations: [Animation]


    public init(animations: [Animation]) {
        self.animations = animations
    }
}

