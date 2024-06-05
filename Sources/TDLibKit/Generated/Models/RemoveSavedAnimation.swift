//
//  RemoveSavedAnimation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-b102c3ad
//  https://github.com/tdlib/td/tree/b102c3ad
//

import Foundation


/// Removes an animation from the list of saved animations
public struct RemoveSavedAnimation: Codable, Equatable, Hashable {

    /// Animation file to be removed
    public let animation: InputFile?


    public init(animation: InputFile?) {
        self.animation = animation
    }
}

