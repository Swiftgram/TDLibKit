//
//  SendTonWalletTransfer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-c15d3f5a
//  https://github.com/tdlib/td/tree/c15d3f5a
//

import Foundation


/// Sends a cryptocurrency from the user's TON wallet; can be used only if getOption("can_use_ton_wallet")
public struct SendTonWalletTransfer: Codable, Equatable, Hashable {

    /// Address in the TON blockchain of the transaction peer
    public let address: String?

    /// The amount of the sent cryptocurrency, in the smallest units of the cryptocurrency
    public let amount: Int64?

    /// Comment added to the transaction
    public let comment: String?

    /// Serialized data for gasless cryptocurrency transfer request; pass an empty string to force a regular request. The minimum allowed transfer amount for a gassless transfer is getOption("ton_wallet_gasless_transfer_amount_min")
    public let gaslessTransferData: Data?

    /// Pass true if the comment is encrypted and must be decrypted using the receiver's or sender's private key
    public let isCommentEncrypted: Bool?

    /// Serialized data for regular cryptocurrency transfer request. The minimum allowed transfer amount is getOption("ton_wallet_transfer_amount_min")
    public let regularTransferData: Data?

    /// Non-persistent identifier, which will be returned back in messageSendingStatePending object and can be used to match sent messages and corresponding updateNewMessage updates
    public let sendingId: Int?

    /// Identifier of the user who will receive the transfer; pass 0 if unknown
    public let userId: Int64?


    public init(
        address: String?,
        amount: Int64?,
        comment: String?,
        gaslessTransferData: Data?,
        isCommentEncrypted: Bool?,
        regularTransferData: Data?,
        sendingId: Int?,
        userId: Int64?
    ) {
        self.address = address
        self.amount = amount
        self.comment = comment
        self.gaslessTransferData = gaslessTransferData
        self.isCommentEncrypted = isCommentEncrypted
        self.regularTransferData = regularTransferData
        self.sendingId = sendingId
        self.userId = userId
    }
}

