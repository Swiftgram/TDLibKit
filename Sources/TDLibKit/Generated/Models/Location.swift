//
//  Location.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Describes a location on planet Earth
public struct Location: Codable {

    /// The estimated horizontal accuracy of the location, in meters; as defined by the sender. 0 if unknown
    public let horizontalAccuracy: Double

    /// Latitude of the location in degrees; as defined by the sender
    public let latitude: Double

    /// Longitude of the location, in degrees; as defined by the sender
    public let longitude: Double


    public init(
        horizontalAccuracy: Double,
        latitude: Double,
        longitude: Double
    ) {
        self.horizontalAccuracy = horizontalAccuracy
        self.latitude = latitude
        self.longitude = longitude
    }
}
