//
//  RemoveSavedAnimation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Removes an animation from the list of saved animations
public struct RemoveSavedAnimation: Codable {

    /// Animation file to be removed
    public let animation: InputFile?


    public init(animation: InputFile?) {
        self.animation = animation
    }
}

