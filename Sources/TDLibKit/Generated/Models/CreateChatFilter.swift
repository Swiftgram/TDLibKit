//
//  CreateChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-18cd0dd9
//  https://github.com/tdlib/td/tree/18cd0dd9
//

import Foundation


/// Creates new chat filter. Returns information about the created chat filter
public struct CreateChatFilter: Codable, Equatable {

    /// Chat filter
    public let filter: ChatFilter?


    public init(filter: ChatFilter?) {
        self.filter = filter
    }
}

