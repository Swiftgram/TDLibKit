//
//  SavedCredentials.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-9c9a74c5
//  https://github.com/tdlib/td/tree/9c9a74c5
//

import Foundation


/// Contains information about saved card credentials
public struct SavedCredentials: Codable, Equatable {

    /// Unique identifier of the saved credentials
    public let id: String

    /// Title of the saved credentials
    public let title: String


    public init(
        id: String,
        title: String
    ) {
        self.id = id
        self.title = title
    }
}

