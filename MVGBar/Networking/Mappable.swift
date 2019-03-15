//
//  Mappable.swift
//  MVGBar
//
//  Created by Ivan Sapozhnik on 3/15/19.
//  Copyright © 2019 Ivan Sapozhnik. All rights reserved.
//

import Foundation

public protocol Mappable {
    var data: Data { get }
    
    func map<D: Decodable>(decoder: JSONDecoder) throws -> D
}

// MARK: Mapping
extension Mappable {
    public func map<D: Decodable>(decoder: JSONDecoder = JSONDecoder()) throws -> D {
        do {
            return try decoder.decode(D.self, from: data)
        } catch let error as DecodingError {
            throw JsonMappingError(decodingError: error)
        }
    }
}
