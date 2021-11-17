//
//  CreateChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4e802d67
//  https://github.com/tdlib/td/tree/4e802d67
//

import Foundation


/// Creates new chat filter. Returns information about the created chat filter
public struct CreateChatFilter: Codable {

    /// Chat filter
    public let filter: ChatFilter?


    public init(filter: ChatFilter?) {
        self.filter = filter
    }
}

