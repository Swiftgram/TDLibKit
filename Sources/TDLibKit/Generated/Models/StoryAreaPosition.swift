//
//  StoryAreaPosition.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-470c36ce
//  https://github.com/tdlib/td/tree/470c36ce
//

import Foundation


/// Describes position of a clickable rectangle area on a story media
public struct StoryAreaPosition: Codable, Equatable, Hashable {

    /// The ordinate of the rectangle's center, as a percentage of the media height
    public let heightPercentage: Double

    /// Clockwise rotation angle of the rectangle, in degrees; 0-360
    public let rotationAngle: Double

    /// The width of the rectangle, as a percentage of the media width
    public let widthPercentage: Double

    /// The abscissa of the rectangle's center, as a percentage of the media width
    public let xPercentage: Double

    /// The ordinate of the rectangle's center, as a percentage of the media height
    public let yPercentage: Double


    public init(
        heightPercentage: Double,
        rotationAngle: Double,
        widthPercentage: Double,
        xPercentage: Double,
        yPercentage: Double
    ) {
        self.heightPercentage = heightPercentage
        self.rotationAngle = rotationAngle
        self.widthPercentage = widthPercentage
        self.xPercentage = xPercentage
        self.yPercentage = yPercentage
    }
}

