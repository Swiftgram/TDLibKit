//
//  GetLinkWebBrowserType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-ea97bcdd
//  https://github.com/tdlib/td/tree/ea97bcdd
//

import Foundation


/// Returns a type of the web browser which must be used to open the link
public struct GetLinkWebBrowserType: Codable, Equatable, Hashable {

    /// The HTTP link
    public let link: String?


    public init(link: String?) {
        self.link = link
    }
}

