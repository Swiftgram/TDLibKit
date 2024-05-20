//
//  PageBlockVerticalAlignment.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a Vertical alignment of a table cell content
public indirect enum PageBlockVerticalAlignment: Codable, Equatable, Hashable {

    /// The content must be top-aligned
    case pageBlockVerticalAlignmentTop

    /// The content must be middle-aligned
    case pageBlockVerticalAlignmentMiddle

    /// The content must be bottom-aligned
    case pageBlockVerticalAlignmentBottom


    private enum Kind: String, Codable {
        case pageBlockVerticalAlignmentTop
        case pageBlockVerticalAlignmentMiddle
        case pageBlockVerticalAlignmentBottom
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .pageBlockVerticalAlignmentTop:
            self = .pageBlockVerticalAlignmentTop
        case .pageBlockVerticalAlignmentMiddle:
            self = .pageBlockVerticalAlignmentMiddle
        case .pageBlockVerticalAlignmentBottom:
            self = .pageBlockVerticalAlignmentBottom
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .pageBlockVerticalAlignmentTop:
            try container.encode(Kind.pageBlockVerticalAlignmentTop, forKey: .type)
        case .pageBlockVerticalAlignmentMiddle:
            try container.encode(Kind.pageBlockVerticalAlignmentMiddle, forKey: .type)
        case .pageBlockVerticalAlignmentBottom:
            try container.encode(Kind.pageBlockVerticalAlignmentBottom, forKey: .type)
        }
    }
}

