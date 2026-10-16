//
//  TonWalletTransferReceiver.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// Represents expected receiver of a TON wallet transfer
public indirect enum TonWalletTransferReceiver: Codable, Equatable, Hashable {

    /// The receiver is specified by its username
    case tonWalletTransferReceiverUser(TonWalletTransferReceiverUser)

    /// The receiver is specified by its address
    case tonWalletTransferReceiverAddress(TonWalletTransferReceiverAddress)


    private enum Kind: String, Codable {
        case tonWalletTransferReceiverUser
        case tonWalletTransferReceiverAddress
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .tonWalletTransferReceiverUser:
            let value = try TonWalletTransferReceiverUser(from: decoder)
            self = .tonWalletTransferReceiverUser(value)
        case .tonWalletTransferReceiverAddress:
            let value = try TonWalletTransferReceiverAddress(from: decoder)
            self = .tonWalletTransferReceiverAddress(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .tonWalletTransferReceiverUser(let value):
            try container.encode(Kind.tonWalletTransferReceiverUser, forKey: .type)
            try value.encode(to: encoder)
        case .tonWalletTransferReceiverAddress(let value):
            try container.encode(Kind.tonWalletTransferReceiverAddress, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The receiver is specified by its username
public struct TonWalletTransferReceiverUser: Codable, Equatable, Hashable {

    /// Username of the user. Use searchPublicChat to find the user, check that it is a regular user, and then use createUserTonWallet to get information about the user's TON wallet
    public let username: String


    public init(username: String) {
        self.username = username
    }
}

/// The receiver is specified by its address
public struct TonWalletTransferReceiverAddress: Codable, Equatable, Hashable {

    /// Address of the receiver. Use getAddressTonWallet to get information about the user's TON wallet
    public let address: String


    public init(address: String) {
        self.address = address
    }
}

