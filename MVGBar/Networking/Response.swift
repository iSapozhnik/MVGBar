//
//  Response.swift
//  MVGBar
//
//  Created by Ivan Sapozhnik on 3/15/19.
//  Copyright © 2019 Ivan Sapozhnik. All rights reserved.
//

import Foundation

public struct Response: Mappable {
    public let statusCode: Int
    public let data: Data
    public let response: HTTPURLResponse?
    
    public init(statusCode: Int, data: Data, response: HTTPURLResponse? = nil) {
        self.statusCode = statusCode
        self.data = data
        self.response = response
    }
}
