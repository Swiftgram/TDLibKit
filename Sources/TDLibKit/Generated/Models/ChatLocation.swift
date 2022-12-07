//
//  ChatLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-a7952f38
//  https://github.com/tdlib/td/tree/a7952f38
//

import Foundation


/// Represents a location to which a chat is connected
public struct ChatLocation: Codable, Equatable {

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

