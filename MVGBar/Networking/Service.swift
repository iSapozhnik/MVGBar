//
//  Service.swift
//  MVGBar
//
//  Created by Ivan Sapozhnik on 3/15/19.
//  Copyright © 2019 Ivan Sapozhnik. All rights reserved.
//

public typealias Completion<D> = (_ result: Result<D, AnyError>) -> Void

public protocol Service {
    static func request<D: Decodable>(endpoint: Endpoint, completion: Completion<D>?)
}
