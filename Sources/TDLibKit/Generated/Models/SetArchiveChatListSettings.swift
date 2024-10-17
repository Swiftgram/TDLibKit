//
//  SetArchiveChatListSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-672f837c
//  https://github.com/tdlib/td/tree/672f837c
//

import Foundation


/// Changes settings for automatic moving of chats to and from the Archive chat lists
public struct SetArchiveChatListSettings: Codable, Equatable, Hashable {

    /// New settings
    public let settings: ArchiveChatListSettings?


    public init(settings: ArchiveChatListSettings?) {
        self.settings = settings
    }
}

