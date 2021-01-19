//
//  StringManagerTest.swift
//  Stringtest
//
//  Created by WorldIT on 18/01/2021.
//

import Foundation

class StringManager: NSObject {
    
    enum StringTesError: Error {
        case noStringFound
    }
    
    static let shared = StringManager()
  
    private override init() {
        super.init()
    }
    

    func callBacktest2(productIDs:[String], withHandler handler: @escaping (_ result: Result<[String], StringTesError>) -> Void) {
       
        if productIDs.contains("PROD_ID_1") {
            handler(.success(["result 1", "result 2"]))
        }
        else {
            //this is a test error
            handler(.failure(.noStringFound))
        }
       
    }
    
   
}
