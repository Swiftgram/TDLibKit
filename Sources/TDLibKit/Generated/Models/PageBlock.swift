//
//  PageBlock.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a block of an instant view web page
/// This Swift enum is recursive.
public indirect enum PageBlock: Codable, Equatable, Hashable {

    /// The title of a page
    case pageBlockTitle(PageBlockTitle)

    /// The subtitle of a page
    case pageBlockSubtitle(PageBlockSubtitle)

    /// The author and publishing date of a page
    case pageBlockAuthorDate(PageBlockAuthorDate)

    /// A header
    case pageBlockHeader(PageBlockHeader)

    /// A subheader
    case pageBlockSubheader(PageBlockSubheader)

    /// A kicker
    case pageBlockKicker(PageBlockKicker)

    /// A text paragraph
    case pageBlockParagraph(PageBlockParagraph)

    /// A preformatted text paragraph
    case pageBlockPreformatted(PageBlockPreformatted)

    /// The footer of a page
    case pageBlockFooter(PageBlockFooter)

    /// An empty block separating a page
    case pageBlockDivider

    /// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor
    case pageBlockAnchor(PageBlockAnchor)

    /// A list of data blocks
    case pageBlockList(PageBlockList)

    /// A block quote
    case pageBlockBlockQuote(PageBlockBlockQuote)

    /// A pull quote
    case pageBlockPullQuote(PageBlockPullQuote)

    /// An animation
    case pageBlockAnimation(PageBlockAnimation)

    /// An audio file
    case pageBlockAudio(PageBlockAudio)

    /// A photo
    case pageBlockPhoto(PageBlockPhoto)

    /// A video
    case pageBlockVideo(PageBlockVideo)

    /// A voice note
    case pageBlockVoiceNote(PageBlockVoiceNote)

    /// A page cover
    case pageBlockCover(PageBlockCover)

    /// An embedded web page
    case pageBlockEmbedded(PageBlockEmbedded)

    /// An embedded post
    case pageBlockEmbeddedPost(PageBlockEmbeddedPost)

    /// A collage
    case pageBlockCollage(PageBlockCollage)

    /// A slideshow
    case pageBlockSlideshow(PageBlockSlideshow)

    /// A link to a chat
    case pageBlockChatLink(PageBlockChatLink)

    /// A table
    case pageBlockTable(PageBlockTable)

    /// A collapsible block
    case pageBlockDetails(PageBlockDetails)

    /// Related articles
    case pageBlockRelatedArticles(PageBlockRelatedArticles)

    /// A map
    case pageBlockMap(PageBlockMap)


    private enum Kind: String, Codable {
        case pageBlockTitle
        case pageBlockSubtitle
        case pageBlockAuthorDate
        case pageBlockHeader
        case pageBlockSubheader
        case pageBlockKicker
        case pageBlockParagraph
        case pageBlockPreformatted
        case pageBlockFooter
        case pageBlockDivider
        case pageBlockAnchor
        case pageBlockList
        case pageBlockBlockQuote
        case pageBlockPullQuote
        case pageBlockAnimation
        case pageBlockAudio
        case pageBlockPhoto
        case pageBlockVideo
        case pageBlockVoiceNote
        case pageBlockCover
        case pageBlockEmbedded
        case pageBlockEmbeddedPost
        case pageBlockCollage
        case pageBlockSlideshow
        case pageBlockChatLink
        case pageBlockTable
        case pageBlockDetails
        case pageBlockRelatedArticles
        case pageBlockMap
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .pageBlockTitle:
            let value = try PageBlockTitle(from: decoder)
            self = .pageBlockTitle(value)
        case .pageBlockSubtitle:
            let value = try PageBlockSubtitle(from: decoder)
            self = .pageBlockSubtitle(value)
        case .pageBlockAuthorDate:
            let value = try PageBlockAuthorDate(from: decoder)
            self = .pageBlockAuthorDate(value)
        case .pageBlockHeader:
            let value = try PageBlockHeader(from: decoder)
            self = .pageBlockHeader(value)
        case .pageBlockSubheader:
            let value = try PageBlockSubheader(from: decoder)
            self = .pageBlockSubheader(value)
        case .pageBlockKicker:
            let value = try PageBlockKicker(from: decoder)
            self = .pageBlockKicker(value)
        case .pageBlockParagraph:
            let value = try PageBlockParagraph(from: decoder)
            self = .pageBlockParagraph(value)
        case .pageBlockPreformatted:
            let value = try PageBlockPreformatted(from: decoder)
            self = .pageBlockPreformatted(value)
        case .pageBlockFooter:
            let value = try PageBlockFooter(from: decoder)
            self = .pageBlockFooter(value)
        case .pageBlockDivider:
            self = .pageBlockDivider
        case .pageBlockAnchor:
            let value = try PageBlockAnchor(from: decoder)
            self = .pageBlockAnchor(value)
        case .pageBlockList:
            let value = try PageBlockList(from: decoder)
            self = .pageBlockList(value)
        case .pageBlockBlockQuote:
            let value = try PageBlockBlockQuote(from: decoder)
            self = .pageBlockBlockQuote(value)
        case .pageBlockPullQuote:
            let value = try PageBlockPullQuote(from: decoder)
            self = .pageBlockPullQuote(value)
        case .pageBlockAnimation:
            let value = try PageBlockAnimation(from: decoder)
            self = .pageBlockAnimation(value)
        case .pageBlockAudio:
            let value = try PageBlockAudio(from: decoder)
            self = .pageBlockAudio(value)
        case .pageBlockPhoto:
            let value = try PageBlockPhoto(from: decoder)
            self = .pageBlockPhoto(value)
        case .pageBlockVideo:
            let value = try PageBlockVideo(from: decoder)
            self = .pageBlockVideo(value)
        case .pageBlockVoiceNote:
            let value = try PageBlockVoiceNote(from: decoder)
            self = .pageBlockVoiceNote(value)
        case .pageBlockCover:
            let value = try PageBlockCover(from: decoder)
            self = .pageBlockCover(value)
        case .pageBlockEmbedded:
            let value = try PageBlockEmbedded(from: decoder)
            self = .pageBlockEmbedded(value)
        case .pageBlockEmbeddedPost:
            let value = try PageBlockEmbeddedPost(from: decoder)
            self = .pageBlockEmbeddedPost(value)
        case .pageBlockCollage:
            let value = try PageBlockCollage(from: decoder)
            self = .pageBlockCollage(value)
        case .pageBlockSlideshow:
            let value = try PageBlockSlideshow(from: decoder)
            self = .pageBlockSlideshow(value)
        case .pageBlockChatLink:
            let value = try PageBlockChatLink(from: decoder)
            self = .pageBlockChatLink(value)
        case .pageBlockTable:
            let value = try PageBlockTable(from: decoder)
            self = .pageBlockTable(value)
        case .pageBlockDetails:
            let value = try PageBlockDetails(from: decoder)
            self = .pageBlockDetails(value)
        case .pageBlockRelatedArticles:
            let value = try PageBlockRelatedArticles(from: decoder)
            self = .pageBlockRelatedArticles(value)
        case .pageBlockMap:
            let value = try PageBlockMap(from: decoder)
            self = .pageBlockMap(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .pageBlockTitle(let value):
            try container.encode(Kind.pageBlockTitle, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockSubtitle(let value):
            try container.encode(Kind.pageBlockSubtitle, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockAuthorDate(let value):
            try container.encode(Kind.pageBlockAuthorDate, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockHeader(let value):
            try container.encode(Kind.pageBlockHeader, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockSubheader(let value):
            try container.encode(Kind.pageBlockSubheader, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockKicker(let value):
            try container.encode(Kind.pageBlockKicker, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockParagraph(let value):
            try container.encode(Kind.pageBlockParagraph, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockPreformatted(let value):
            try container.encode(Kind.pageBlockPreformatted, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockFooter(let value):
            try container.encode(Kind.pageBlockFooter, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockDivider:
            try container.encode(Kind.pageBlockDivider, forKey: .type)
        case .pageBlockAnchor(let value):
            try container.encode(Kind.pageBlockAnchor, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockList(let value):
            try container.encode(Kind.pageBlockList, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockBlockQuote(let value):
            try container.encode(Kind.pageBlockBlockQuote, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockPullQuote(let value):
            try container.encode(Kind.pageBlockPullQuote, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockAnimation(let value):
            try container.encode(Kind.pageBlockAnimation, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockAudio(let value):
            try container.encode(Kind.pageBlockAudio, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockPhoto(let value):
            try container.encode(Kind.pageBlockPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockVideo(let value):
            try container.encode(Kind.pageBlockVideo, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockVoiceNote(let value):
            try container.encode(Kind.pageBlockVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockCover(let value):
            try container.encode(Kind.pageBlockCover, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockEmbedded(let value):
            try container.encode(Kind.pageBlockEmbedded, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockEmbeddedPost(let value):
            try container.encode(Kind.pageBlockEmbeddedPost, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockCollage(let value):
            try container.encode(Kind.pageBlockCollage, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockSlideshow(let value):
            try container.encode(Kind.pageBlockSlideshow, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockChatLink(let value):
            try container.encode(Kind.pageBlockChatLink, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockTable(let value):
            try container.encode(Kind.pageBlockTable, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockDetails(let value):
            try container.encode(Kind.pageBlockDetails, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockRelatedArticles(let value):
            try container.encode(Kind.pageBlockRelatedArticles, forKey: .type)
            try value.encode(to: encoder)
        case .pageBlockMap(let value):
            try container.encode(Kind.pageBlockMap, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The title of a page
public struct PageBlockTitle: Codable, Equatable, Hashable {

    /// Title
    public let title: RichText


    public init(title: RichText) {
        self.title = title
    }
}

/// The subtitle of a page
public struct PageBlockSubtitle: Codable, Equatable, Hashable {

    /// Subtitle
    public let subtitle: RichText


    public init(subtitle: RichText) {
        self.subtitle = subtitle
    }
}

/// The author and publishing date of a page
public struct PageBlockAuthorDate: Codable, Equatable, Hashable {

    /// Author
    public let author: RichText

    /// Point in time (Unix timestamp) when the article was published; 0 if unknown
    public let publishDate: Int


    public init(
        author: RichText,
        publishDate: Int
    ) {
        self.author = author
        self.publishDate = publishDate
    }
}

/// A header
public struct PageBlockHeader: Codable, Equatable, Hashable {

    /// Header
    public let header: RichText


    public init(header: RichText) {
        self.header = header
    }
}

/// A subheader
public struct PageBlockSubheader: Codable, Equatable, Hashable {

    /// Subheader
    public let subheader: RichText


    public init(subheader: RichText) {
        self.subheader = subheader
    }
}

/// A kicker
public struct PageBlockKicker: Codable, Equatable, Hashable {

    /// Kicker
    public let kicker: RichText


    public init(kicker: RichText) {
        self.kicker = kicker
    }
}

/// A text paragraph
public struct PageBlockParagraph: Codable, Equatable, Hashable {

    /// Paragraph text
    public let text: RichText


    public init(text: RichText) {
        self.text = text
    }
}

/// A preformatted text paragraph
public struct PageBlockPreformatted: Codable, Equatable, Hashable {

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

/// The footer of a page
public struct PageBlockFooter: Codable, Equatable, Hashable {

    /// Footer
    public let footer: RichText


    public init(footer: RichText) {
        self.footer = footer
    }
}

/// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor
public struct PageBlockAnchor: Codable, Equatable, Hashable {

    /// Name of the anchor
    public let name: String


    public init(name: String) {
        self.name = name
    }
}

/// A list of data blocks
public struct PageBlockList: Codable, Equatable, Hashable {

    /// The items of the list
    public let items: [PageBlockListItem]


    public init(items: [PageBlockListItem]) {
        self.items = items
    }
}

/// A block quote
public struct PageBlockBlockQuote: Codable, Equatable, Hashable {

    /// Quote credit
    public let credit: RichText

    /// Quote text
    public let text: RichText


    public init(
        credit: RichText,
        text: RichText
    ) {
        self.credit = credit
        self.text = text
    }
}

/// A pull quote
public struct PageBlockPullQuote: Codable, Equatable, Hashable {

    /// Quote credit
    public let credit: RichText

    /// Quote text
    public let text: RichText


    public init(
        credit: RichText,
        text: RichText
    ) {
        self.credit = credit
        self.text = text
    }
}

/// An animation
public struct PageBlockAnimation: Codable, Equatable, Hashable {

    /// Animation file; may be null
    public let animation: Animation?

    /// Animation caption
    public let caption: PageBlockCaption

    /// True, if the animation must be played automatically
    public let needAutoplay: Bool


    public init(
        animation: Animation?,
        caption: PageBlockCaption,
        needAutoplay: Bool
    ) {
        self.animation = animation
        self.caption = caption
        self.needAutoplay = needAutoplay
    }
}

/// An audio file
public struct PageBlockAudio: Codable, Equatable, Hashable {

    /// Audio file; may be null
    public let audio: Audio?

    /// Audio file caption
    public let caption: PageBlockCaption


    public init(
        audio: Audio?,
        caption: PageBlockCaption
    ) {
        self.audio = audio
        self.caption = caption
    }
}

/// A photo
public struct PageBlockPhoto: Codable, Equatable, Hashable {

    /// Photo caption
    public let caption: PageBlockCaption

    /// Photo file; may be null
    public let photo: Photo?

    /// URL that needs to be opened when the photo is clicked
    public let url: String


    public init(
        caption: PageBlockCaption,
        photo: Photo?,
        url: String
    ) {
        self.caption = caption
        self.photo = photo
        self.url = url
    }
}

/// A video
public struct PageBlockVideo: Codable, Equatable, Hashable {

    /// Video caption
    public let caption: PageBlockCaption

    /// True, if the video must be looped
    public let isLooped: Bool

    /// True, if the video must be played automatically
    public let needAutoplay: Bool

    /// Video file; may be null
    public let video: Video?


    public init(
        caption: PageBlockCaption,
        isLooped: Bool,
        needAutoplay: Bool,
        video: Video?
    ) {
        self.caption = caption
        self.isLooped = isLooped
        self.needAutoplay = needAutoplay
        self.video = video
    }
}

/// A voice note
public struct PageBlockVoiceNote: Codable, Equatable, Hashable {

    /// Voice note caption
    public let caption: PageBlockCaption

    /// Voice note; may be null
    public let voiceNote: VoiceNote?


    public init(
        caption: PageBlockCaption,
        voiceNote: VoiceNote?
    ) {
        self.caption = caption
        self.voiceNote = voiceNote
    }
}

/// A page cover
public struct PageBlockCover: Codable, Equatable, Hashable {

    /// Cover
    public let cover: PageBlock


    public init(cover: PageBlock) {
        self.cover = cover
    }
}

/// An embedded web page
public struct PageBlockEmbedded: Codable, Equatable, Hashable {

    /// True, if scrolling needs to be allowed
    public let allowScrolling: Bool

    /// Block caption
    public let caption: PageBlockCaption

    /// Block height; 0 if unknown
    public let height: Int

    /// HTML-markup of the embedded page
    public let html: String

    /// True, if the block must be full width
    public let isFullWidth: Bool

    /// Poster photo, if available; may be null
    public let posterPhoto: Photo?

    /// Web page URL, if available
    public let url: String

    /// Block width; 0 if unknown
    public let width: Int


    public init(
        allowScrolling: Bool,
        caption: PageBlockCaption,
        height: Int,
        html: String,
        isFullWidth: Bool,
        posterPhoto: Photo?,
        url: String,
        width: Int
    ) {
        self.allowScrolling = allowScrolling
        self.caption = caption
        self.height = height
        self.html = html
        self.isFullWidth = isFullWidth
        self.posterPhoto = posterPhoto
        self.url = url
        self.width = width
    }
}

/// An embedded post
public struct PageBlockEmbeddedPost: Codable, Equatable, Hashable {

    /// Post author
    public let author: String

    /// Post author photo; may be null
    public let authorPhoto: Photo?

    /// Post caption
    public let caption: PageBlockCaption

    /// Point in time (Unix timestamp) when the post was created; 0 if unknown
    public let date: Int

    /// Post content
    public let pageBlocks: [PageBlock]

    /// Web page URL
    public let url: String


    public init(
        author: String,
        authorPhoto: Photo?,
        caption: PageBlockCaption,
        date: Int,
        pageBlocks: [PageBlock],
        url: String
    ) {
        self.author = author
        self.authorPhoto = authorPhoto
        self.caption = caption
        self.date = date
        self.pageBlocks = pageBlocks
        self.url = url
    }
}

/// A collage
public struct PageBlockCollage: Codable, Equatable, Hashable {

    /// Block caption
    public let caption: PageBlockCaption

    /// Collage item contents
    public let pageBlocks: [PageBlock]


    public init(
        caption: PageBlockCaption,
        pageBlocks: [PageBlock]
    ) {
        self.caption = caption
        self.pageBlocks = pageBlocks
    }
}

/// A slideshow
public struct PageBlockSlideshow: Codable, Equatable, Hashable {

    /// Block caption
    public let caption: PageBlockCaption

    /// Slideshow item contents
    public let pageBlocks: [PageBlock]


    public init(
        caption: PageBlockCaption,
        pageBlocks: [PageBlock]
    ) {
        self.caption = caption
        self.pageBlocks = pageBlocks
    }
}

/// A link to a chat
public struct PageBlockChatLink: Codable, Equatable, Hashable {

    /// Identifier of the accent color for chat title and background of chat photo
    public let accentColorId: Int

    /// Chat photo; may be null
    public let photo: ChatPhotoInfo?

    /// Chat title
    public let title: String

    /// Chat username by which all other information about the chat can be resolved
    public let username: String


    public init(
        accentColorId: Int,
        photo: ChatPhotoInfo?,
        title: String,
        username: String
    ) {
        self.accentColorId = accentColorId
        self.photo = photo
        self.title = title
        self.username = username
    }
}

/// A table
public struct PageBlockTable: Codable, Equatable, Hashable {

    /// Table caption
    public let caption: RichText

    /// Table cells
    public let cells: [[PageBlockTableCell]]

    /// True, if the table is bordered
    public let isBordered: Bool

    /// True, if the table is striped
    public let isStriped: Bool


    public init(
        caption: RichText,
        cells: [[PageBlockTableCell]],
        isBordered: Bool,
        isStriped: Bool
    ) {
        self.caption = caption
        self.cells = cells
        self.isBordered = isBordered
        self.isStriped = isStriped
    }
}

/// A collapsible block
public struct PageBlockDetails: Codable, Equatable, Hashable {

    /// Always visible heading for the block
    public let header: RichText

    /// True, if the block is open by default
    public let isOpen: Bool

    /// Block contents
    public let pageBlocks: [PageBlock]


    public init(
        header: RichText,
        isOpen: Bool,
        pageBlocks: [PageBlock]
    ) {
        self.header = header
        self.isOpen = isOpen
        self.pageBlocks = pageBlocks
    }
}

/// Related articles
public struct PageBlockRelatedArticles: Codable, Equatable, Hashable {

    /// List of related articles
    public let articles: [PageBlockRelatedArticle]

    /// Block header
    public let header: RichText


    public init(
        articles: [PageBlockRelatedArticle],
        header: RichText
    ) {
        self.articles = articles
        self.header = header
    }
}

/// A map
public struct PageBlockMap: Codable, Equatable, Hashable {

    /// Block caption
    public let caption: PageBlockCaption

    /// Map height
    public let height: Int

    /// Location of the map center
    public let location: Location

    /// Map width
    public let width: Int

    /// Map zoom level
    public let zoom: Int


    public init(
        caption: PageBlockCaption,
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

