//
//  Backgrounds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Contains a list of backgrounds
public struct Backgrounds: Codable {

    /// A list of backgrounds
    public let backgrounds: [Background]


    public init(backgrounds: [Background]) {
        self.backgrounds = backgrounds
    }
}

