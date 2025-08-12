//
//  Backgrounds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
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

