//
//  PageBlockVerticalAlignment.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Describes a Vertical alignment of a table cell content
public enum PageBlockVerticalAlignment: Codable {

    /// The content should be top-aligned
    case pageBlockVerticalAlignmentTop

    /// The content should be middle-aligned
    case pageBlockVerticalAlignmentMiddle

    /// The content should be bottom-aligned
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

