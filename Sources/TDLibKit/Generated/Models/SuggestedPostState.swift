//
//  SuggestedPostState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Describes state of a suggested post
public indirect enum SuggestedPostState: Codable, Equatable, Hashable {

    /// The post must be approved or declined
    case suggestedPostStatePending

    /// The post was approved
    case suggestedPostStateApproved

    /// The post was declined
    case suggestedPostStateDeclined


    private enum Kind: String, Codable {
        case suggestedPostStatePending
        case suggestedPostStateApproved
        case suggestedPostStateDeclined
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .suggestedPostStatePending:
            self = .suggestedPostStatePending
        case .suggestedPostStateApproved:
            self = .suggestedPostStateApproved
        case .suggestedPostStateDeclined:
            self = .suggestedPostStateDeclined
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .suggestedPostStatePending:
            try container.encode(Kind.suggestedPostStatePending, forKey: .type)
        case .suggestedPostStateApproved:
            try container.encode(Kind.suggestedPostStateApproved, forKey: .type)
        case .suggestedPostStateDeclined:
            try container.encode(Kind.suggestedPostStateDeclined, forKey: .type)
        }
    }
}

