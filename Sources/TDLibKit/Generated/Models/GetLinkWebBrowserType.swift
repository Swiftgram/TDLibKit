//
//  GetLinkWebBrowserType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
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

