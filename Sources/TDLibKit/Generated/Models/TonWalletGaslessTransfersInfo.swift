//
//  TonWalletGaslessTransfersInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-025086e3
//  https://github.com/tdlib/td/tree/025086e3
//

import Foundation


/// Represents state of gasless transfers for the current user
public struct TonWalletGaslessTransfersInfo: Codable, Equatable, Hashable {

    /// Number of left gasless transfers. The daily available number of gasless transfers is available as getOption("ton_wallet_gasless_transfer_daily_count_max")
    public let leftCount: Int

    /// Address of the relayer for gasless transfers; may be empty if unavailable
    public let relayerAddress: String

    /// Point in time (Unix timestamp) when the number of left transfers will be reset; 0 if never
    public let resetDate: Int


    public init(
        leftCount: Int,
        relayerAddress: String,
        resetDate: Int
    ) {
        self.leftCount = leftCount
        self.relayerAddress = relayerAddress
        self.resetDate = resetDate
    }
}

