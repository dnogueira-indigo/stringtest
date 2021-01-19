//
//  ViewController.swift
//  Stringtest
//
//  Created by WorldIT on 18/01/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    @IBAction func testStringCallbackButton(_ sender: Any) {
        self.resultLabel.text = ""
        self.testCallback(prod: "PROD_ID_1")
    }
    
    @IBAction func testStringErrorButton(_ sender: Any) {
        self.resultLabel.text = ""
        self.testCallback(prod: "ERROR_TEST")
    }
    
    func testCallback(prod:String) {
        StringManager.shared.callBacktest2(productIDs: [prod]) { (result) in
            switch result {
            case .success (let products):
                print(products)
                for p in products {
                    self.resultLabel.text! += p + " "
                }
                
               
            case .failure(let error):
                self.resultLabel.text = error.localizedDescription
                
            }
        }
    }
}

