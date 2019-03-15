//
//  ParameterEncoder.swift
//  MVGBar
//
//  Created by Ivan Sapozhnik on 3/15/19.
//  Copyright © 2019 Ivan Sapozhnik. All rights reserved.
//

import Foundation

public typealias Parameters = [String: Any]

public enum ParameterEncoding {
    case url
    case json
    
//    public func encode(_ request: URLRequest, with parameters: [String: Any]?) throws -> URLRequest {
//        return try encoder.encode(request, with: parameters)
//    }
//    
//    private var encoder: ParameterEncoding {
//        switch self {
//        case .url:
//            return URLEncoding(destination: .queryString)
//        case .json:
//            return JSONEncoding.default
//        }
//    }
}

//struct TempParameterEncoding {
//}
//
//public protocol ParameterEncoder {
//    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
//}
