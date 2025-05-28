//
//  DecryptGroupCallData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Decrypts group call data received by tgcalls
public struct DecryptGroupCallData: Codable, Equatable, Hashable {

    /// Data to decrypt
    public let data: Data?

    /// Data channel for which data was encrypted; pass null if unknown
    public let dataChannel: GroupCallDataChannel?

    /// Group call identifier. The call must not be a video chat
    public let groupCallId: Int?

    /// Identifier of the group call participant, which sent the data
    public let participantId: MessageSender?


    public init(
        data: Data?,
        dataChannel: GroupCallDataChannel?,
        groupCallId: Int?,
        participantId: MessageSender?
    ) {
        self.data = data
        self.dataChannel = dataChannel
        self.groupCallId = groupCallId
        self.participantId = participantId
    }
}

