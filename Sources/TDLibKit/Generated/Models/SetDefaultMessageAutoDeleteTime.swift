//
//  SetDefaultMessageAutoDeleteTime.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Changes the default message auto-delete time for new chats
public struct SetDefaultMessageAutoDeleteTime: Codable, Equatable, Hashable {

    /// New default message auto-delete time; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
    public let messageAutoDeleteTime: MessageAutoDeleteTime?


    public init(messageAutoDeleteTime: MessageAutoDeleteTime?) {
        self.messageAutoDeleteTime = messageAutoDeleteTime
    }
}

