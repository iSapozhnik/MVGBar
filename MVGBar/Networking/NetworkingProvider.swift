//
//  NetworkingProvider.swift
//  MVGBar
//
//  Created by Ivan Sapozhnik on 3/15/19.
//  Copyright © 2019 Ivan Sapozhnik. All rights reserved.
//

import Foundation

open class NetworkingProvider<E: Endpoint> {
    public typealias CompletionHandler = (URLRequest?, Result<Response, NetworkingError>) -> Void
    
    open func request(endpoint: E, completion: @escaping CompletionHandler) {
        
        let url = endpoint.baseURL.appendingPathComponent(endpoint.path)
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.httpMethod.rawValue
        request.allHTTPHeaderFields = endpoint.headers
        
        // TODO: add parameters
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, urlResponse, error) in
            let result = self.convertResponseToResult(response: urlResponse as? HTTPURLResponse, data: data, error: error)
            completion(request, result)
        }.resume()
    }
}

extension NetworkingProvider {
    public func convertResponseToResult(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Response, NetworkingError> {
        switch (response, data, error) {
        case let (.some(response), data, .none):
            let response = Response(statusCode: response.statusCode, data: data ?? Data(), response: response)
            return .success(response)
        case let (_, _, .some(error)):
            return .failure(NetworkingError(error: error))
        default:
            let error = NetworkingError(error: NSError(domain: NSURLErrorDomain, code: NSURLErrorUnknown, userInfo: nil))
            return .failure(NetworkingError(error: error))
        }
    }
}
