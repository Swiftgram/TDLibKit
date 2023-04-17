//
//  RemoveSavedAnimation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Removes an animation from the list of saved animations
public struct RemoveSavedAnimation: Codable, Equatable {

    /// Animation file to be removed
    public let animation: InputFile?


    public init(animation: InputFile?) {
        self.animation = animation
    }
}

