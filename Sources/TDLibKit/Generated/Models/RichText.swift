//
//  RichText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a text object inside an instant-view web page
/// This Swift enum is recursive.
public indirect enum RichText: Codable, Equatable, Hashable {

    /// A plain text
    case richTextPlain(RichTextPlain)

    /// A bold rich text
    case richTextBold(RichTextBold)

    /// An italicized rich text
    case richTextItalic(RichTextItalic)

    /// An underlined rich text
    case richTextUnderline(RichTextUnderline)

    /// A strikethrough rich text
    case richTextStrikethrough(RichTextStrikethrough)

    /// A fixed-width rich text
    case richTextFixed(RichTextFixed)

    /// A rich text URL link
    case richTextUrl(RichTextUrl)

    /// A rich text email link
    case richTextEmailAddress(RichTextEmailAddress)

    /// A subscript rich text
    case richTextSubscript(RichTextSubscript)

    /// A superscript rich text
    case richTextSuperscript(RichTextSuperscript)

    /// A marked rich text
    case richTextMarked(RichTextMarked)

    /// A rich text phone number
    case richTextPhoneNumber(RichTextPhoneNumber)

    /// A small image inside the text
    case richTextIcon(RichTextIcon)

    /// A reference to a richTexts object on the same web page
    case richTextReference(RichTextReference)

    /// An anchor
    case richTextAnchor(RichTextAnchor)

    /// A link to an anchor on the same web page
    case richTextAnchorLink(RichTextAnchorLink)

    /// A concatenation of rich texts
    case richTexts(RichTexts)


    private enum Kind: String, Codable {
        case richTextPlain
        case richTextBold
        case richTextItalic
        case richTextUnderline
        case richTextStrikethrough
        case richTextFixed
        case richTextUrl
        case richTextEmailAddress
        case richTextSubscript
        case richTextSuperscript
        case richTextMarked
        case richTextPhoneNumber
        case richTextIcon
        case richTextReference
        case richTextAnchor
        case richTextAnchorLink
        case richTexts
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .richTextPlain:
            let value = try RichTextPlain(from: decoder)
            self = .richTextPlain(value)
        case .richTextBold:
            let value = try RichTextBold(from: decoder)
            self = .richTextBold(value)
        case .richTextItalic:
            let value = try RichTextItalic(from: decoder)
            self = .richTextItalic(value)
        case .richTextUnderline:
            let value = try RichTextUnderline(from: decoder)
            self = .richTextUnderline(value)
        case .richTextStrikethrough:
            let value = try RichTextStrikethrough(from: decoder)
            self = .richTextStrikethrough(value)
        case .richTextFixed:
            let value = try RichTextFixed(from: decoder)
            self = .richTextFixed(value)
        case .richTextUrl:
            let value = try RichTextUrl(from: decoder)
            self = .richTextUrl(value)
        case .richTextEmailAddress:
            let value = try RichTextEmailAddress(from: decoder)
            self = .richTextEmailAddress(value)
        case .richTextSubscript:
            let value = try RichTextSubscript(from: decoder)
            self = .richTextSubscript(value)
        case .richTextSuperscript:
            let value = try RichTextSuperscript(from: decoder)
            self = .richTextSuperscript(value)
        case .richTextMarked:
            let value = try RichTextMarked(from: decoder)
            self = .richTextMarked(value)
        case .richTextPhoneNumber:
            let value = try RichTextPhoneNumber(from: decoder)
            self = .richTextPhoneNumber(value)
        case .richTextIcon:
            let value = try RichTextIcon(from: decoder)
            self = .richTextIcon(value)
        case .richTextReference:
            let value = try RichTextReference(from: decoder)
            self = .richTextReference(value)
        case .richTextAnchor:
            let value = try RichTextAnchor(from: decoder)
            self = .richTextAnchor(value)
        case .richTextAnchorLink:
            let value = try RichTextAnchorLink(from: decoder)
            self = .richTextAnchorLink(value)
        case .richTexts:
            let value = try RichTexts(from: decoder)
            self = .richTexts(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .richTextPlain(let value):
            try container.encode(Kind.richTextPlain, forKey: .type)
            try value.encode(to: encoder)
        case .richTextBold(let value):
            try container.encode(Kind.richTextBold, forKey: .type)
            try value.encode(to: encoder)
        case .richTextItalic(let value):
            try container.encode(Kind.richTextItalic, forKey: .type)
            try value.encode(to: encoder)
        case .richTextUnderline(let value):
            try container.encode(Kind.richTextUnderline, forKey: .type)
            try value.encode(to: encoder)
        case .richTextStrikethrough(let value):
            try container.encode(Kind.richTextStrikethrough, forKey: .type)
            try value.encode(to: encoder)
        case .richTextFixed(let value):
            try container.encode(Kind.richTextFixed, forKey: .type)
            try value.encode(to: encoder)
        case .richTextUrl(let value):
            try container.encode(Kind.richTextUrl, forKey: .type)
            try value.encode(to: encoder)
        case .richTextEmailAddress(let value):
            try container.encode(Kind.richTextEmailAddress, forKey: .type)
            try value.encode(to: encoder)
        case .richTextSubscript(let value):
            try container.encode(Kind.richTextSubscript, forKey: .type)
            try value.encode(to: encoder)
        case .richTextSuperscript(let value):
            try container.encode(Kind.richTextSuperscript, forKey: .type)
            try value.encode(to: encoder)
        case .richTextMarked(let value):
            try container.encode(Kind.richTextMarked, forKey: .type)
            try value.encode(to: encoder)
        case .richTextPhoneNumber(let value):
            try container.encode(Kind.richTextPhoneNumber, forKey: .type)
            try value.encode(to: encoder)
        case .richTextIcon(let value):
            try container.encode(Kind.richTextIcon, forKey: .type)
            try value.encode(to: encoder)
        case .richTextReference(let value):
            try container.encode(Kind.richTextReference, forKey: .type)
            try value.encode(to: encoder)
        case .richTextAnchor(let value):
            try container.encode(Kind.richTextAnchor, forKey: .type)
            try value.encode(to: encoder)
        case .richTextAnchorLink(let value):
            try container.encode(Kind.richTextAnchorLink, forKey: .type)
            try value.encode(to: encoder)
        case .richTexts(let value):
            try container.encode(Kind.richTexts, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A plain text
public struct RichTextPlain: Codable, Equatable, Hashable {

    /// Text
    public let text: String


    public init(text: String) {
        self.text = text
    }
}

/// A bold rich text
public struct RichTextBold: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// An italicized rich text
public struct RichTextItalic: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// An underlined rich text
public struct RichTextUnderline: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A strikethrough rich text
public struct RichTextStrikethrough: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A fixed-width rich text
public struct RichTextFixed: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A rich text URL link
public struct RichTextUrl: Codable, Equatable, Hashable {

    /// True, if the URL has cached instant view server-side
    public let isCached: Bool

    /// Text
    public let text: RichText

    /// URL
    public let url: String


    public init(
        isCached: Bool,
        text: RichText,
        url: String
    ) {
        self.isCached = isCached
        self.text = text
        self.url = url
    }
}

/// A rich text email link
public struct RichTextEmailAddress: Codable, Equatable, Hashable {

    /// Email address
    public let emailAddress: String

    /// Text
    public let text: RichText


    public init(
        emailAddress: String,
        text: RichText
    ) {
        self.emailAddress = emailAddress
        self.text = text
    }
}

/// A subscript rich text
public struct RichTextSubscript: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A superscript rich text
public struct RichTextSuperscript: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A marked rich text
public struct RichTextMarked: Codable, Equatable, Hashable {

    /// Text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A rich text phone number
public struct RichTextPhoneNumber: Codable, Equatable, Hashable {

    /// Phone number
    public let phoneNumber: String

    /// Text
    public let text: RichText


    public init(
        phoneNumber: String,
        text: RichText
    ) {
        self.phoneNumber = phoneNumber
        self.text = text
    }
}

/// A small image inside the text
public struct RichTextIcon: Codable, Equatable, Hashable {

    /// The image represented as a document. The image can be in GIF, JPEG or PNG format
    public let document: Document

    /// Height of a bounding box in which the image must be shown; 0 if unknown
    public let height: Int

    /// Width of a bounding box in which the image must be shown; 0 if unknown
    public let width: Int


    public init(
        document: Document,
        height: Int,
        width: Int
    ) {
        self.document = document
        self.height = height
        self.width = width
    }
}

/// A reference to a richTexts object on the same web page
public struct RichTextReference: Codable, Equatable, Hashable {

    /// The name of a richTextAnchor object, which is the first element of the target richTexts object
    public let anchorName: String

    /// The text
    public let text: RichText

    /// An HTTP URL, opening the reference
    public let url: String


    public init(
        anchorName: String,
        text: RichText,
        url: String
    ) {
        self.anchorName = anchorName
        self.text = text
        self.url = url
    }
}

/// An anchor
public struct RichTextAnchor: Codable, Equatable, Hashable {

    /// Anchor name
    public let name: String


    public init(name: String) {
        self.name = name
    }
}

/// A link to an anchor on the same web page
public struct RichTextAnchorLink: Codable, Equatable, Hashable {

    /// The anchor name. If the name is empty, the link must bring back to top
    public let anchorName: String

    /// The link text
    public let text: RichText

    /// An HTTP URL, opening the anchor
    public let url: String


    public init(
        anchorName: String,
        text: RichText,
        url: String
    ) {
        self.anchorName = anchorName
        self.text = text
        self.url = url
    }
}

/// A concatenation of rich texts
public struct RichTexts: Codable, Equatable, Hashable {

    /// Texts
    public let texts: [RichText]


    public init(texts: [RichText]) {
        self.texts = texts
    }
}

