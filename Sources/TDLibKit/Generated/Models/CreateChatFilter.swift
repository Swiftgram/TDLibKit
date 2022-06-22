//
//  CreateChatFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-375d3d23
//  https://github.com/tdlib/td/tree/375d3d23
//

import Foundation


/// Creates new chat filter. Returns information about the created chat filter. There can be up to GetOption("chat_filter_count_max") chat filters, but the limit can be increased with Telegram Premium
public struct CreateChatFilter: Codable, Equatable {

    /// Chat filter
    public let filter: ChatFilter?


    public init(filter: ChatFilter?) {
        self.filter = filter
    }
}

