//
//  EncryptGroupCallData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Encrypts group call data before sending them over network using tgcalls
public struct EncryptGroupCallData: Codable, Equatable, Hashable {

    /// Data to encrypt
    public let data: Data?

    /// Data channel for which data is encrypted
    public let dataChannel: GroupCallDataChannel?

    /// Group call identifier. The call must not be a video chat
    public let groupCallId: Int?

    /// Size of data prefix that must be kept unencrypted
    public let unencryptedPrefixSize: Int?


    public init(
        data: Data?,
        dataChannel: GroupCallDataChannel?,
        groupCallId: Int?,
        unencryptedPrefixSize: Int?
    ) {
        self.data = data
        self.dataChannel = dataChannel
        self.groupCallId = groupCallId
        self.unencryptedPrefixSize = unencryptedPrefixSize
    }
}

