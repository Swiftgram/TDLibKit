//
//  GetChatFilterDefaultIconName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Returns default icon name for a filter. Can be called synchronously
public struct GetChatFilterDefaultIconName: Codable, Equatable {

    /// Chat filter
    public let filter: ChatFilter?


    public init(filter: ChatFilter?) {
        self.filter = filter
    }
}

