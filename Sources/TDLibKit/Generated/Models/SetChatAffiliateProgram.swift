//
//  SetChatAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Changes the affiliate program for a bot
public struct SetChatAffiliateProgram: Codable, Equatable, Hashable {

    /// Identifier of the chat with an owned bot for which the affiliate program is changed
    public let chatId: Int64?

    /// Parameters of the affiliate program; pass null to close the currently active program. If there is an active program, then commission and program duration can only be increased. If the active program is scheduled to be closed, then it can't be changed anymore
    public let parameters: AffiliateProgramParameters?


    public init(
        chatId: Int64?,
        parameters: AffiliateProgramParameters?
    ) {
        self.chatId = chatId
        self.parameters = parameters
    }
}

