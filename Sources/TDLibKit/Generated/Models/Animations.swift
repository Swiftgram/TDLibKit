//
//  Animations.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-062f2605
//  https://github.com/tdlib/td/tree/062f2605
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

