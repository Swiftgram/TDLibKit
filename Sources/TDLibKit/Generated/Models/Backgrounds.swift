//
//  Backgrounds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.12-29e8df51
//  https://github.com/tdlib/td/tree/29e8df51
//

import Foundation


/// Contains a list of backgrounds
public struct Backgrounds: Codable, Equatable {

    /// A list of backgrounds
    public let backgrounds: [Background]


    public init(backgrounds: [Background]) {
        self.backgrounds = backgrounds
    }
}

