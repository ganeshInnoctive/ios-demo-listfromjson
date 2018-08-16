//
//  ApiList.swift
//  ListParseTableDemo
//
//  Created by user140892 on 8/14/18.
//  Copyright © 2018 demo. All rights reserved.
//

import Foundation

struct ApiList {
    
    private var baseUrl: String = "https://reqres.in/api/"
    private var page: String
    
    init(page: String) {
        self.page = page
    }
    
    func getUserList() -> String {
        return baseUrl + "users?page=" + page
    }
    
}
