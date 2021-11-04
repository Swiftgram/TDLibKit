//
//  GetChatFilterDefaultIconName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Returns default icon name for a filter. Can be called synchronously
public struct GetChatFilterDefaultIconName: Codable {

    /// Chat filter
    public let filter: ChatFilter?


    public init(filter: ChatFilter?) {
        self.filter = filter
    }
}

