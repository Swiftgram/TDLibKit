//
//  Point.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-1da39552
//  https://github.com/tdlib/td/tree/1da39552
//

import Foundation


/// A point on a Cartesian plane
public struct Point: Codable, Equatable {

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

