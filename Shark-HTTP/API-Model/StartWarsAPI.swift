//
//  TestAPI.swift
//  Shark-HTTP
//
//  Created by WEI-TSUNG CHENG on 2020/10/28.
//

import Foundation

class TestAPI {
   // private let loader: HTTPLoading
    private let loader: HTTPLoader
    
//    public init(loader: HTTPLoading = URLSession.shared) {
//        self.loader = loader
//    }
//    public init(loader: HTTPLoader = URLSessionLoader(session: URLSession.shared)) {
//        self.loader = loader
//    }
    
    public init(loader: HTTPLoader = URLSessionLoader(session: URLSession.shared)) {
        
        let modifier = ModifyRequest { request -> HTTPRequest in
//            print(request.url)
            
            var copy = request
            
            if let host = copy.host {
                if host.isEmpty  {
                    copy.host = "learnappmaking.com"
                }
            } else {
                copy.host = "learnappmaking.com"
            }
            
            if let path = copy.path {
                if path.hasPrefix("/") == false {
                    copy.path = "/ex/" + path
                } else {
                    copy.path = "/ex" + path
                }
            } else {
                copy.path = "/ex"
            }
            
//            print(copy.url)
            return copy
        }
        
        self.loader = modifier --> loader //?? HTTPLoader()
    }
    //https://learnappmaking.com/ex/books.json
    
    public func requestPeople(completion: @escaping(([StartWarsPeople]) -> Void)) {
        var r = HTTPRequest()
        r.urlComponents.path = "/users.json"
//        r.host = "learnappmaking.com"
//        r.path = "/ex/users.json"
    
        loader.load(request: r) { result in
//            let json = try! JSONSerialization.jsonObject(with: (result.response?.body)!, options: [])
//            print(json)
//            print(result.response?.body)
            
            let peoples = try! JSONDecoder().decode([StartWarsPeople].self, from: (result.response?.body)!)
            completion(peoples)
        }
    }
}


struct StartWarsPeople: Codable {
    let age: Int
    let first_name: String
    let last_name: String

}
