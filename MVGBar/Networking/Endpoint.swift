//
//  Endpoint.swift
//  MVGBar
//
//  Created by Ivan Sapozhnik on 3/15/19.
//  Copyright © 2019 Ivan Sapozhnik. All rights reserved.
//

import Foundation

public typealias HTTPHeaders = [String: String]

public protocol Endpoint {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var service: Service { get }
    var headers: HTTPHeaders? { get }
    var encoding: ParameterEncoding { get }
}
