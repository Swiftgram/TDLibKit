//
//  JSONDecoder+Result.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


extension JSONDecoder {

    func tryDecode<T>(_ type: T.Type, from data: Data) -> Result<T, Swift.Error> where T : Decodable {
        do {
            let result = try self.decode(type, from: data)
            return .success(result)
        } catch {
            return .failure(error)
        }
    }
}
