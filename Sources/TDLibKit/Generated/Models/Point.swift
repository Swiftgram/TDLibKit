//
//  Point.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// A point on a Cartesian plane
public struct Point: Codable {

    /// The point's first coordinate
    public let x: Double

    /// The point's second coordinate
    public let y: Double


    public init(
        x: Double,
        y: Double
    ) {
        self.x = x
        self.y = y
    }
}

