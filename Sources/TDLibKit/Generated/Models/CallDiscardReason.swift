//
//  CallDiscardReason.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Describes the reason why a call was discarded
public indirect enum CallDiscardReason: Codable, Equatable, Hashable {

    /// The call wasn't discarded, or the reason is unknown
    case callDiscardReasonEmpty

    /// The call was ended before the conversation started. It was canceled by the caller or missed by the other party
    case callDiscardReasonMissed

    /// The call was ended before the conversation started. It was declined by the other party
    case callDiscardReasonDeclined

    /// The call was ended during the conversation because the users were disconnected
    case callDiscardReasonDisconnected

    /// The call was ended because one of the parties hung up
    case callDiscardReasonHungUp

    /// The call was ended because it has been used successfully to transfer private encryption key for the associated group call
    case callDiscardReasonAllowGroupCall(CallDiscardReasonAllowGroupCall)


    private enum Kind: String, Codable {
        case callDiscardReasonEmpty
        case callDiscardReasonMissed
        case callDiscardReasonDeclined
        case callDiscardReasonDisconnected
        case callDiscardReasonHungUp
        case callDiscardReasonAllowGroupCall
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .callDiscardReasonEmpty:
            self = .callDiscardReasonEmpty
        case .callDiscardReasonMissed:
            self = .callDiscardReasonMissed
        case .callDiscardReasonDeclined:
            self = .callDiscardReasonDeclined
        case .callDiscardReasonDisconnected:
            self = .callDiscardReasonDisconnected
        case .callDiscardReasonHungUp:
            self = .callDiscardReasonHungUp
        case .callDiscardReasonAllowGroupCall:
            let value = try CallDiscardReasonAllowGroupCall(from: decoder)
            self = .callDiscardReasonAllowGroupCall(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .callDiscardReasonEmpty:
            try container.encode(Kind.callDiscardReasonEmpty, forKey: .type)
        case .callDiscardReasonMissed:
            try container.encode(Kind.callDiscardReasonMissed, forKey: .type)
        case .callDiscardReasonDeclined:
            try container.encode(Kind.callDiscardReasonDeclined, forKey: .type)
        case .callDiscardReasonDisconnected:
            try container.encode(Kind.callDiscardReasonDisconnected, forKey: .type)
        case .callDiscardReasonHungUp:
            try container.encode(Kind.callDiscardReasonHungUp, forKey: .type)
        case .callDiscardReasonAllowGroupCall(let value):
            try container.encode(Kind.callDiscardReasonAllowGroupCall, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The call was ended because it has been used successfully to transfer private encryption key for the associated group call
public struct CallDiscardReasonAllowGroupCall: Codable, Equatable, Hashable {

    /// Encrypted using the call private key encryption key for the associated group call
    public let encryptedGroupCallKey: Data


    public init(encryptedGroupCallKey: Data) {
        self.encryptedGroupCallKey = encryptedGroupCallKey
    }
}

