//
//  ResendCodeReason.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-5c77c469
//  https://github.com/tdlib/td/tree/5c77c469
//

import Foundation


/// Describes the reason why a code needs to be re-sent
public indirect enum ResendCodeReason: Codable, Equatable, Hashable {

    /// The user requested to resend the code
    case resendCodeReasonUserRequest

    /// The code is re-sent, because device verification has failed
    case resendCodeReasonVerificationFailed(ResendCodeReasonVerificationFailed)


    private enum Kind: String, Codable {
        case resendCodeReasonUserRequest
        case resendCodeReasonVerificationFailed
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .resendCodeReasonUserRequest:
            self = .resendCodeReasonUserRequest
        case .resendCodeReasonVerificationFailed:
            let value = try ResendCodeReasonVerificationFailed(from: decoder)
            self = .resendCodeReasonVerificationFailed(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .resendCodeReasonUserRequest:
            try container.encode(Kind.resendCodeReasonUserRequest, forKey: .type)
        case .resendCodeReasonVerificationFailed(let value):
            try container.encode(Kind.resendCodeReasonVerificationFailed, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The code is re-sent, because device verification has failed
public struct ResendCodeReasonVerificationFailed: Codable, Equatable, Hashable {

    /// Cause of the verification failure, for example, "PLAY_SERVICES_NOT_AVAILABLE", "APNS_RECEIVE_TIMEOUT", or "APNS_INIT_FAILED"
    public let errorMessage: String


    public init(errorMessage: String) {
        self.errorMessage = errorMessage
    }
}

