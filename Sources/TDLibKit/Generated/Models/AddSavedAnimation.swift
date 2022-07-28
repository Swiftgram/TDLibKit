//
//  AddSavedAnimation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Manually adds a new animation to the list of saved animations. The new animation is added to the beginning of the list. If the animation was already in the list, it is removed first. Only non-secret video animations with MIME type "video/mp4" can be added to the list
public struct AddSavedAnimation: Codable, Equatable {

    /// The animation file to be added. Only animations known to the server (i.e., successfully sent via a message) can be added to the list
    public let animation: InputFile?


    public init(animation: InputFile?) {
        self.animation = animation
    }
}

