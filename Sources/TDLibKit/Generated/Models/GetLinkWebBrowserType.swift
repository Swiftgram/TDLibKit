//
//  GetLinkWebBrowserType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
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

