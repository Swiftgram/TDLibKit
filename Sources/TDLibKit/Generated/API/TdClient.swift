//
//  TdClient.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Basic protocol for communicate with TdLib.
public protocol TdClient {

    /// Receives incoming updates and request responses from the TDLib client
    func run(updateHandler: @escaping (Data) -> Void)

    /// Sends request to the TDLib client.
    func send(query: TdQuery, completion: ((Data) -> Void)?)

    /// Synchronously executes TDLib request. Only a few requests can be executed synchronously.
    func execute(query: TdQuery) -> Result<[String:Any]?, Swift.Error>

    /// Close connection with TDLib.
    func close()

}


/// Basic Async protocol for communicate with TdLib.
@available(iOS 15.0, macOS 12.0, watchOS 8.0, tvOS 15.0, *)
public protocol AsyncTdClient {

    /// Creates client and starts updates poller to work with async requests
    func start()

    /// Continuously listen for updates and asynchronously process them via provided updateHandler
    func run(updateHandler: @escaping (Data) -> Void)

    /// Asynchronously Sends request to the TDLib client.
    func send(query: TdQuery) async throws -> Data

    /// Synchronously executes TDLib request.
    func execute(query: TdQuery) throws -> [String:Any]?

    /// Close connection with TDLib and stop updates polling.
    func close()

}


public protocol TdQuery {

    func make(with extra: String?) throws -> Data

}
