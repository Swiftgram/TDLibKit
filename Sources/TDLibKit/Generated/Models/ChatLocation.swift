//
//  ChatLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Represents a location to which a chat is connected
public struct ChatLocation: Codable {

    /// Location address; 1-64 characters, as defined by the chat owner
    public let address: String

    /// The location
    public let location: Location


    public init(
        address: String,
        location: Location
    ) {
        self.address = address
        self.location = location
    }
}
