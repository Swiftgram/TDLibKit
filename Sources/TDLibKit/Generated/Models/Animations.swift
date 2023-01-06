//
//  Animations.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-19cde80f
//  https://github.com/tdlib/td/tree/19cde80f
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

