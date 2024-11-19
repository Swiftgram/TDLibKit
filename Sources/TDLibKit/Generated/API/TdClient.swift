//
//  TdClient.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Basic protocol for communicate with TdLib.
public protocol TdClient {

    /// Receives incoming updates and request responses from the TDLib client
    func run(updateHandler: @escaping (Data) -> Void)

    /// Sends request to the TDLib client.
    func send(query: TdQuery, completion: ((Data) -> Void)?) throws

    /// Synchronously executes TDLib request. Only a few requests can be executed synchronously.
    func execute(query: TdQuery) throws -> [String:Any]?

    /// Close connection with TDLib.
    func close()

}


public protocol TdQuery {

    func make(with extra: String?) throws -> Data

}
