//
//  InputPageBlock.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Describes a block of a rich message to send
public indirect enum InputPageBlock: Codable, Equatable, Hashable {

    /// A section heading
    case inputPageBlockSectionHeading(InputPageBlockSectionHeading)

    /// A text paragraph
    case inputPageBlockParagraph(InputPageBlockParagraph)

    /// A preformatted text paragraph
    case inputPageBlockPreformatted(InputPageBlockPreformatted)

    /// The footer of the page
    case inputPageBlockFooter(InputPageBlockFooter)

    /// A "Thinking..." placeholder; for pending rich messages only; for bots only
    case inputPageBlockThinking(InputPageBlockThinking)

    /// An empty block separating the page
    case inputPageBlockDivider

    /// A mathematical expression
    case inputPageBlockMathematicalExpression(InputPageBlockMathematicalExpression)

    /// An invisible anchor
    case inputPageBlockAnchor(InputPageBlockAnchor)

    /// A list of data blocks
    case inputPageBlockList(InputPageBlockList)

    /// A block quote
    case inputPageBlockBlockQuote(InputPageBlockBlockQuote)

    /// An expandable block quote
    case inputPageBlockExpandableBlockQuote(InputPageBlockExpandableBlockQuote)

    /// A pull quote
    case inputPageBlockPullQuote(InputPageBlockPullQuote)

    /// An animation
    case inputPageBlockAnimation(InputPageBlockAnimation)

    /// An audio file
    case inputPageBlockAudio(InputPageBlockAudio)

    /// A general file
    case inputPageBlockDocument(InputPageBlockDocument)

    /// A photo
    case inputPageBlockPhoto(InputPageBlockPhoto)

    /// A video
    case inputPageBlockVideo(InputPageBlockVideo)

    /// A voice note
    case inputPageBlockVoiceNote(InputPageBlockVoiceNote)

    /// A collage
    case inputPageBlockCollage(InputPageBlockCollage)

    /// A slideshow
    case inputPageBlockSlideshow(InputPageBlockSlideshow)

    /// A table
    case inputPageBlockTable(InputPageBlockTable)

    /// A collapsible block
    case inputPageBlockDetails(InputPageBlockDetails)

    /// A map. The map's width and height must not exceed 10000 in total. Width and height ratio must be at most 20
    case inputPageBlockMap(InputPageBlockMap)

    /// A list of buttons shown in a row
    case inputPageBlockButtonRow(InputPageBlockButtonRow)


    private enum Kind: String, Codable {
        case inputPageBlockSectionHeading
        case inputPageBlockParagraph
        case inputPageBlockPreformatted
        case inputPageBlockFooter
        case inputPageBlockThinking
        case inputPageBlockDivider
        case inputPageBlockMathematicalExpression
        case inputPageBlockAnchor
        case inputPageBlockList
        case inputPageBlockBlockQuote
        case inputPageBlockExpandableBlockQuote
        case inputPageBlockPullQuote
        case inputPageBlockAnimation
        case inputPageBlockAudio
        case inputPageBlockDocument
        case inputPageBlockPhoto
        case inputPageBlockVideo
        case inputPageBlockVoiceNote
        case inputPageBlockCollage
        case inputPageBlockSlideshow
        case inputPageBlockTable
        case inputPageBlockDetails
        case inputPageBlockMap
        case inputPageBlockButtonRow
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputPageBlockSectionHeading:
            let value = try InputPageBlockSectionHeading(from: decoder)
            self = .inputPageBlockSectionHeading(value)
        case .inputPageBlockParagraph:
            let value = try InputPageBlockParagraph(from: decoder)
            self = .inputPageBlockParagraph(value)
        case .inputPageBlockPreformatted:
            let value = try InputPageBlockPreformatted(from: decoder)
            self = .inputPageBlockPreformatted(value)
        case .inputPageBlockFooter:
            let value = try InputPageBlockFooter(from: decoder)
            self = .inputPageBlockFooter(value)
        case .inputPageBlockThinking:
            let value = try InputPageBlockThinking(from: decoder)
            self = .inputPageBlockThinking(value)
        case .inputPageBlockDivider:
            self = .inputPageBlockDivider
        case .inputPageBlockMathematicalExpression:
            let value = try InputPageBlockMathematicalExpression(from: decoder)
            self = .inputPageBlockMathematicalExpression(value)
        case .inputPageBlockAnchor:
            let value = try InputPageBlockAnchor(from: decoder)
            self = .inputPageBlockAnchor(value)
        case .inputPageBlockList:
            let value = try InputPageBlockList(from: decoder)
            self = .inputPageBlockList(value)
        case .inputPageBlockBlockQuote:
            let value = try InputPageBlockBlockQuote(from: decoder)
            self = .inputPageBlockBlockQuote(value)
        case .inputPageBlockExpandableBlockQuote:
            let value = try InputPageBlockExpandableBlockQuote(from: decoder)
            self = .inputPageBlockExpandableBlockQuote(value)
        case .inputPageBlockPullQuote:
            let value = try InputPageBlockPullQuote(from: decoder)
            self = .inputPageBlockPullQuote(value)
        case .inputPageBlockAnimation:
            let value = try InputPageBlockAnimation(from: decoder)
            self = .inputPageBlockAnimation(value)
        case .inputPageBlockAudio:
            let value = try InputPageBlockAudio(from: decoder)
            self = .inputPageBlockAudio(value)
        case .inputPageBlockDocument:
            let value = try InputPageBlockDocument(from: decoder)
            self = .inputPageBlockDocument(value)
        case .inputPageBlockPhoto:
            let value = try InputPageBlockPhoto(from: decoder)
            self = .inputPageBlockPhoto(value)
        case .inputPageBlockVideo:
            let value = try InputPageBlockVideo(from: decoder)
            self = .inputPageBlockVideo(value)
        case .inputPageBlockVoiceNote:
            let value = try InputPageBlockVoiceNote(from: decoder)
            self = .inputPageBlockVoiceNote(value)
        case .inputPageBlockCollage:
            let value = try InputPageBlockCollage(from: decoder)
            self = .inputPageBlockCollage(value)
        case .inputPageBlockSlideshow:
            let value = try InputPageBlockSlideshow(from: decoder)
            self = .inputPageBlockSlideshow(value)
        case .inputPageBlockTable:
            let value = try InputPageBlockTable(from: decoder)
            self = .inputPageBlockTable(value)
        case .inputPageBlockDetails:
            let value = try InputPageBlockDetails(from: decoder)
            self = .inputPageBlockDetails(value)
        case .inputPageBlockMap:
            let value = try InputPageBlockMap(from: decoder)
            self = .inputPageBlockMap(value)
        case .inputPageBlockButtonRow:
            let value = try InputPageBlockButtonRow(from: decoder)
            self = .inputPageBlockButtonRow(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputPageBlockSectionHeading(let value):
            try container.encode(Kind.inputPageBlockSectionHeading, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockParagraph(let value):
            try container.encode(Kind.inputPageBlockParagraph, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockPreformatted(let value):
            try container.encode(Kind.inputPageBlockPreformatted, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockFooter(let value):
            try container.encode(Kind.inputPageBlockFooter, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockThinking(let value):
            try container.encode(Kind.inputPageBlockThinking, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockDivider:
            try container.encode(Kind.inputPageBlockDivider, forKey: .type)
        case .inputPageBlockMathematicalExpression(let value):
            try container.encode(Kind.inputPageBlockMathematicalExpression, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockAnchor(let value):
            try container.encode(Kind.inputPageBlockAnchor, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockList(let value):
            try container.encode(Kind.inputPageBlockList, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockBlockQuote(let value):
            try container.encode(Kind.inputPageBlockBlockQuote, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockExpandableBlockQuote(let value):
            try container.encode(Kind.inputPageBlockExpandableBlockQuote, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockPullQuote(let value):
            try container.encode(Kind.inputPageBlockPullQuote, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockAnimation(let value):
            try container.encode(Kind.inputPageBlockAnimation, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockAudio(let value):
            try container.encode(Kind.inputPageBlockAudio, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockDocument(let value):
            try container.encode(Kind.inputPageBlockDocument, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockPhoto(let value):
            try container.encode(Kind.inputPageBlockPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockVideo(let value):
            try container.encode(Kind.inputPageBlockVideo, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockVoiceNote(let value):
            try container.encode(Kind.inputPageBlockVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockCollage(let value):
            try container.encode(Kind.inputPageBlockCollage, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockSlideshow(let value):
            try container.encode(Kind.inputPageBlockSlideshow, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockTable(let value):
            try container.encode(Kind.inputPageBlockTable, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockDetails(let value):
            try container.encode(Kind.inputPageBlockDetails, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockMap(let value):
            try container.encode(Kind.inputPageBlockMap, forKey: .type)
            try value.encode(to: encoder)
        case .inputPageBlockButtonRow(let value):
            try container.encode(Kind.inputPageBlockButtonRow, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A section heading
public struct InputPageBlockSectionHeading: Codable, Equatable, Hashable {

    /// Relative size of the text font; 1-6, 1 is the largest, 6 is the smallest
    public let size: Int

    /// Text of the section heading
    public let text: RichText


    public init(
        size: Int,
        text: RichText
    ) {
        self.size = size
        self.text = text
    }
}

/// A text paragraph
public struct InputPageBlockParagraph: Codable, Equatable, Hashable {

    /// Paragraph text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A preformatted text paragraph
public struct InputPageBlockPreformatted: Codable, Equatable, Hashable {

    /// Programming language for which the text needs to be formatted
    public let language: String

    /// Paragraph text
    public let text: RichText


    public init(
        language: String,
        text: RichText
    ) {
        self.language = language
        self.text = text
    }
}

/// The footer of the page
public struct InputPageBlockFooter: Codable, Equatable, Hashable {

    /// Footer
    public let footer: RichText


    public init(footer: RichText) {
        self.footer = footer
    }
}

/// A "Thinking..." placeholder; for pending rich messages only; for bots only
public struct InputPageBlockThinking: Codable, Equatable, Hashable {

    /// Text of the placeholder
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A mathematical expression
public struct InputPageBlockMathematicalExpression: Codable, Equatable, Hashable {

    /// The expression in LaTeX format
    public let expression: String


    public init(expression: String) {
        self.expression = expression
    }
}

/// An invisible anchor
public struct InputPageBlockAnchor: Codable, Equatable, Hashable {

    /// Name of the anchor
    public let name: String


    public init(name: String) {
        self.name = name
    }
}

/// A list of data blocks
public struct InputPageBlockList: Codable, Equatable, Hashable {

    /// The items of the list
    public let items: [InputPageBlockListItem]


    public init(items: [InputPageBlockListItem]) {
        self.items = items
    }
}

/// A block quote
public struct InputPageBlockBlockQuote: Codable, Equatable, Hashable {

    /// Quote blocks
    public let blocks: [InputPageBlock]

    /// Quote credit; pass null if none
    public let credit: RichText?


    public init(
        blocks: [InputPageBlock],
        credit: RichText?
    ) {
        self.blocks = blocks
        self.credit = credit
    }
}

/// An expandable block quote
public struct InputPageBlockExpandableBlockQuote: Codable, Equatable, Hashable {

    /// Quote credit; pass null if none
    public let credit: RichText?

    /// Quote text
    public let text: RichText


    public init(
        credit: RichText?,
        text: RichText
    ) {
        self.credit = credit
        self.text = text
    }
}

/// A pull quote
public struct InputPageBlockPullQuote: Codable, Equatable, Hashable {

    /// Quote credit; pass null if none
    public let credit: RichText?

    /// Quote text
    public let text: RichText


    public init(
        credit: RichText?,
        text: RichText
    ) {
        self.credit = credit
        self.text = text
    }
}

/// An animation
public struct InputPageBlockAnimation: Codable, Equatable, Hashable {

    /// The animation to be sent
    public let animation: InputAnimation

    /// Animation caption; pass null if none
    public let caption: PageBlockCaption?

    /// True, if the animation preview must be covered by a spoiler animation
    public let hasSpoiler: Bool


    public init(
        animation: InputAnimation,
        caption: PageBlockCaption?,
        hasSpoiler: Bool
    ) {
        self.animation = animation
        self.caption = caption
        self.hasSpoiler = hasSpoiler
    }
}

/// An audio file
public struct InputPageBlockAudio: Codable, Equatable, Hashable {

    /// The audio to be sent
    public let audio: InputAudio

    /// Audio file caption; pass null if none
    public let caption: PageBlockCaption?


    public init(
        audio: InputAudio,
        caption: PageBlockCaption?
    ) {
        self.audio = audio
        self.caption = caption
    }
}

/// A general file
public struct InputPageBlockDocument: Codable, Equatable, Hashable {

    /// File caption; pass null if none
    public let caption: PageBlockCaption?

    /// The file to be sent
    public let document: InputDocument


    public init(
        caption: PageBlockCaption?,
        document: InputDocument
    ) {
        self.caption = caption
        self.document = document
    }
}

/// A photo
public struct InputPageBlockPhoto: Codable, Equatable, Hashable {

    /// Photo caption; pass null if none
    public let caption: PageBlockCaption?

    /// True, if the photo preview must be covered by a spoiler animation
    public let hasSpoiler: Bool

    /// The photo to be sent
    public let photo: InputPhoto


    public init(
        caption: PageBlockCaption?,
        hasSpoiler: Bool,
        photo: InputPhoto
    ) {
        self.caption = caption
        self.hasSpoiler = hasSpoiler
        self.photo = photo
    }
}

/// A video
public struct InputPageBlockVideo: Codable, Equatable, Hashable {

    /// Video caption; pass null if none
    public let caption: PageBlockCaption?

    /// True, if the video preview must be covered by a spoiler animation
    public let hasSpoiler: Bool

    /// The video to be sent
    public let video: InputVideo


    public init(
        caption: PageBlockCaption?,
        hasSpoiler: Bool,
        video: InputVideo
    ) {
        self.caption = caption
        self.hasSpoiler = hasSpoiler
        self.video = video
    }
}

/// A voice note
public struct InputPageBlockVoiceNote: Codable, Equatable, Hashable {

    /// Voice note caption; pass null if none
    public let caption: PageBlockCaption?

    /// The voice note to be sent
    public let voiceNote: InputVoiceNote


    public init(
        caption: PageBlockCaption?,
        voiceNote: InputVoiceNote
    ) {
        self.caption = caption
        self.voiceNote = voiceNote
    }
}

/// A collage
public struct InputPageBlockCollage: Codable, Equatable, Hashable {

    /// Collage item contents
    public let blocks: [InputPageBlock]

    /// Block caption; pass null if none
    public let caption: PageBlockCaption?


    public init(
        blocks: [InputPageBlock],
        caption: PageBlockCaption?
    ) {
        self.blocks = blocks
        self.caption = caption
    }
}

/// A slideshow
public struct InputPageBlockSlideshow: Codable, Equatable, Hashable {

    /// Slideshow item contents
    public let blocks: [InputPageBlock]

    /// Block caption; pass null if none
    public let caption: PageBlockCaption?


    public init(
        blocks: [InputPageBlock],
        caption: PageBlockCaption?
    ) {
        self.blocks = blocks
        self.caption = caption
    }
}

/// A table
public struct InputPageBlockTable: Codable, Equatable, Hashable {

    /// Table caption
    public let caption: RichText

    /// Table cells
    public let cells: [[PageBlockTableCell]]

    /// Pass true if the table is bordered
    public let isBordered: Bool

    /// Pass true if table cells must have smaller indents
    public let isCompact: Bool

    /// Pass true if the table is striped
    public let isStriped: Bool


    public init(
        caption: RichText,
        cells: [[PageBlockTableCell]],
        isBordered: Bool,
        isCompact: Bool,
        isStriped: Bool
    ) {
        self.caption = caption
        self.cells = cells
        self.isBordered = isBordered
        self.isCompact = isCompact
        self.isStriped = isStriped
    }
}

/// A collapsible block
public struct InputPageBlockDetails: Codable, Equatable, Hashable {

    /// Block contents
    public let blocks: [InputPageBlock]

    /// Always visible heading for the block
    public let header: RichText

    /// True, if the block is open by default
    public let isOpen: Bool


    public init(
        blocks: [InputPageBlock],
        header: RichText,
        isOpen: Bool
    ) {
        self.blocks = blocks
        self.header = header
        self.isOpen = isOpen
    }
}

/// A map. The map's width and height must not exceed 10000 in total. Width and height ratio must be at most 20
public struct InputPageBlockMap: Codable, Equatable, Hashable {

    /// Block caption; pass null if none
    public let caption: PageBlockCaption?

    /// Map height; 0-10000
    public let height: Int

    /// Location of the map center
    public let location: Location

    /// Map width; 0-10000
    public let width: Int

    /// Map zoom level; 0-24
    public let zoom: Int


    public init(
        caption: PageBlockCaption?,
        height: Int,
        location: Location,
        width: Int,
        zoom: Int
    ) {
        self.caption = caption
        self.height = height
        self.location = location
        self.width = width
        self.zoom = zoom
    }
}

/// A list of buttons shown in a row
public struct InputPageBlockButtonRow: Codable, Equatable, Hashable {

    /// Horizontal alignment of the buttons; pass null if the buttons must be shown full-width
    public let align: PageBlockHorizontalAlignment?

    /// The buttons
    public let buttons: [InlineButton]


    public init(
        align: PageBlockHorizontalAlignment?,
        buttons: [InlineButton]
    ) {
        self.align = align
        self.buttons = buttons
    }
}

