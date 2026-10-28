//
//  WebProxyCarrier.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-fb464979
//  https://github.com/tdlib/td/tree/fb464979
//

import Foundation


/// Describes a web proxy carrier: an HTTPS relay page, which carries traffic of a web proxy and must be loaded by the application as the top-level document of a hidden web view. Before loading the page, the application must arrange for an object named carrier.bridge_object_name to be defined in the top-level document whenever its origin is exactly carrier.origin, and in no other document or frame. The object must be read-only and must have two members: a method postMessage(value), which passes an ArrayBuffer or a typed array to processWebProxyCarrierMessage as webProxyCarrierMessageBinary, passes a string as webProxyCarrierMessageText, and rejects any other value; and a property onmessage, which the page sets to a function. The application delivers data to the page by calling that function with an object {data: value}, where value is an ArrayBuffer for binary data and a string for text. Each carrier needs its own web view
public struct WebProxyCarrier: Codable, Equatable, Hashable, Identifiable {

    /// Name of the object to define in the top-level document; currently, always "TelegramWebProxy"
    public let bridgeObjectName: String

    /// Unique identifier of the carrier
    public let id: Int

    /// True, if the carrier is needed only to test the proxy and will be closed after the test. The application may refuse to open such carriers, for example, to avoid creating a web view for every saved proxy
    public let isTemporary: Bool

    /// Origin of the relay page, for example, "https://proxy.example.com". The web view must not be allowed to navigate to another origin
    public let origin: String

    /// The only path prefix on carrier.origin from which the page may load resources or to which it may send requests, for example, "/" or "/relay/"
    public let pathPrefix: String

    /// Identifier of the added proxy that uses the carrier; 0 if the carrier is used by pingProxy or testProxy
    public let proxyId: Int

    /// The HTTPS URL to load. The URL contains the capability for the proxy and a fragment, which must be kept; the URL must never be logged or shown to the user
    public let url: String


    public init(
        bridgeObjectName: String,
        id: Int,
        isTemporary: Bool,
        origin: String,
        pathPrefix: String,
        proxyId: Int,
        url: String
    ) {
        self.bridgeObjectName = bridgeObjectName
        self.id = id
        self.isTemporary = isTemporary
        self.origin = origin
        self.pathPrefix = pathPrefix
        self.proxyId = proxyId
        self.url = url
    }
}

