//
//  SetMessageSenderBlockList.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Changes the block list of a message sender. Currently, only users and supergroup chats can be blocked
public struct SetMessageSenderBlockList: Codable, Equatable, Hashable {

    /// New block list for the message sender; pass null to unblock the message sender
    public let blockList: BlockList?

    /// Identifier of a message sender to block/unblock
    public let senderId: MessageSender?


    public init(
        blockList: BlockList?,
        senderId: MessageSender?
    ) {
        self.blockList = blockList
        self.senderId = senderId
    }
}

