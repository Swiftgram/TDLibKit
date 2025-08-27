//
//  SuggestedPostRefundReason.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-5c77c469
//  https://github.com/tdlib/td/tree/5c77c469
//

import Foundation


/// Describes reason for refund of the payment for a suggested post
public indirect enum SuggestedPostRefundReason: Codable, Equatable, Hashable {

    /// The post was refunded, because it was deleted by channel administrators in less than getOption("suggested_post_lifetime_min") seconds
    case suggestedPostRefundReasonPostDeleted

    /// The post was refunded, because the payment for the post was refunded
    case suggestedPostRefundReasonPaymentRefunded


    private enum Kind: String, Codable {
        case suggestedPostRefundReasonPostDeleted
        case suggestedPostRefundReasonPaymentRefunded
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .suggestedPostRefundReasonPostDeleted:
            self = .suggestedPostRefundReasonPostDeleted
        case .suggestedPostRefundReasonPaymentRefunded:
            self = .suggestedPostRefundReasonPaymentRefunded
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .suggestedPostRefundReasonPostDeleted:
            try container.encode(Kind.suggestedPostRefundReasonPostDeleted, forKey: .type)
        case .suggestedPostRefundReasonPaymentRefunded:
            try container.encode(Kind.suggestedPostRefundReasonPaymentRefunded, forKey: .type)
        }
    }
}

