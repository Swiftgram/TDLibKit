//
//  CallState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes the current call state
public indirect enum CallState: Codable, Equatable, Hashable {

    /// The call is pending, waiting to be accepted by a user
    case callStatePending(CallStatePending)

    /// The call has been answered and encryption keys are being exchanged
    case callStateExchangingKeys

    /// The call is ready to use
    case callStateReady(CallStateReady)

    /// The call is hanging up after discardCall has been called
    case callStateHangingUp

    /// The call has ended successfully
    case callStateDiscarded(CallStateDiscarded)

    /// The call has ended with an error
    case callStateError(CallStateError)


    private enum Kind: String, Codable {
        case callStatePending
        case callStateExchangingKeys
        case callStateReady
        case callStateHangingUp
        case callStateDiscarded
        case callStateError
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .callStatePending:
            let value = try CallStatePending(from: decoder)
            self = .callStatePending(value)
        case .callStateExchangingKeys:
            self = .callStateExchangingKeys
        case .callStateReady:
            let value = try CallStateReady(from: decoder)
            self = .callStateReady(value)
        case .callStateHangingUp:
            self = .callStateHangingUp
        case .callStateDiscarded:
            let value = try CallStateDiscarded(from: decoder)
            self = .callStateDiscarded(value)
        case .callStateError:
            let value = try CallStateError(from: decoder)
            self = .callStateError(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .callStatePending(let value):
            try container.encode(Kind.callStatePending, forKey: .type)
            try value.encode(to: encoder)
        case .callStateExchangingKeys:
            try container.encode(Kind.callStateExchangingKeys, forKey: .type)
        case .callStateReady(let value):
            try container.encode(Kind.callStateReady, forKey: .type)
            try value.encode(to: encoder)
        case .callStateHangingUp:
            try container.encode(Kind.callStateHangingUp, forKey: .type)
        case .callStateDiscarded(let value):
            try container.encode(Kind.callStateDiscarded, forKey: .type)
            try value.encode(to: encoder)
        case .callStateError(let value):
            try container.encode(Kind.callStateError, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The call is pending, waiting to be accepted by a user
public struct CallStatePending: Codable, Equatable, Hashable {

    /// True, if the call has already been created by the server
    public let isCreated: Bool

    /// True, if the call has already been received by the other party
    public let isReceived: Bool


    public init(
        isCreated: Bool,
        isReceived: Bool
    ) {
        self.isCreated = isCreated
        self.isReceived = isReceived
    }
}

/// The call is ready to use
public struct CallStateReady: Codable, Equatable, Hashable {

    /// True, if peer-to-peer connection is allowed by users privacy settings
    public let allowP2p: Bool

    /// A JSON-encoded call config
    public let config: String

    /// Custom JSON-encoded call parameters to be passed to tgcalls
    public let customParameters: String

    /// Encryption key emojis fingerprint
    public let emojis: [String]

    /// Call encryption key
    public let encryptionKey: Data

    /// Call protocols supported by the other call participant
    public let `protocol`: CallProtocol

    /// List of available call servers
    public let servers: [CallServer]


    public init(
        allowP2p: Bool,
        config: String,
        customParameters: String,
        emojis: [String],
        encryptionKey: Data,
        `protocol`: CallProtocol,
        servers: [CallServer]
    ) {
        self.allowP2p = allowP2p
        self.config = config
        self.customParameters = customParameters
        self.emojis = emojis
        self.encryptionKey = encryptionKey
        self.`protocol` = `protocol`
        self.servers = servers
    }
}

/// The call has ended successfully
public struct CallStateDiscarded: Codable, Equatable, Hashable {

    /// True, if the call debug information must be sent to the server
    public let needDebugInformation: Bool

    /// True, if the call log must be sent to the server
    public let needLog: Bool

    /// True, if the call rating must be sent to the server
    public let needRating: Bool

    /// The reason why the call has ended
    public let reason: CallDiscardReason


    public init(
        needDebugInformation: Bool,
        needLog: Bool,
        needRating: Bool,
        reason: CallDiscardReason
    ) {
        self.needDebugInformation = needDebugInformation
        self.needLog = needLog
        self.needRating = needRating
        self.reason = reason
    }
}

/// The call has ended with an error
public struct CallStateError: Codable, Equatable, Hashable {

    /// Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout
    public let error: Error


    public init(error: Error) {
        self.error = error
    }
}

