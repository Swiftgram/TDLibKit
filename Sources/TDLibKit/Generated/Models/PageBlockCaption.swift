//
//  PageBlockCaption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-738ae316
//  https://github.com/tdlib/td/tree/738ae316
//

import Foundation


/// Contains a caption of another block
public struct PageBlockCaption: Codable, Equatable, Hashable {

    /// Block credit (like HTML tag <cite>); may be null if none
    public let credit: RichText?

    /// Content of the caption
    public let text: RichText


    public init(
        credit: RichText?,
        text: RichText
    ) {
        self.credit = credit
        self.text = text
    }
}

