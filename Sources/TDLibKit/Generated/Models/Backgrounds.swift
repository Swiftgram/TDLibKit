//
//  Backgrounds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-18d36ada
//  https://github.com/tdlib/td/tree/18d36ada
//

import Foundation


/// Contains a list of backgrounds
public struct Backgrounds: Codable, Equatable, Hashable {

    /// A list of backgrounds
    public let backgrounds: [Background]


    public init(backgrounds: [Background]) {
        self.backgrounds = backgrounds
    }
}

