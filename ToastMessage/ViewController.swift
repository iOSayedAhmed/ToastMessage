//
//  ViewController.swift
//  ToastMessage
//
//  Created by iOSayed on 08/11/2022.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       print( solution(transfers: ["B","A","A","B","A"], values: [2, 4, 1, 1, 2]))
    }
    
    @IBAction func showToast(_ sender: UIButton) {
        ToastManager.shared.showToast(message: "Please fill all text fields. 🫥", type: .message, view: self.view)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func solution(transfers:[String], values:[Int]) -> [Int] {
        var initA  = 0
        var initB = 0
        var result = [initA,initB]
        var FinalValue = [0,0]
        
        if transfers.count == values.count {
            for i in 0..<transfers.count {
              
                switch transfers[i] {
                    case "A" :
                        print("transfer \(values[i]) from B to A")
                        if values[i]>FinalValue[1] {
                            result[1] += (values[i] - FinalValue[1])
                           FinalValue[1] -= (values[i] - result[1])
                            FinalValue[0] += values[i]
                            print(FinalValue)
                        }else {
                            FinalValue[1] -= values[i]
                            FinalValue[0] += values[i]
                            print(FinalValue)
                        }
                    case "B":
                        print("transfer \(values[i]) from A to B")
                    if values[i]>result[0] {
                        result[0] += values[i]
                        FinalValue[0] -= (values[i] - result[0])
                        FinalValue[1] += values[i]
                        print(FinalValue)
                    }else {
                        FinalValue[0] -= values[i]
                        FinalValue[1] += values[i]
                        print(FinalValue)
                    }
                    default:
                        print("Invalide Data!!")
                    }
                
                
            }
            return result
        }
        
        
        return []
    }
    
    
    
    
}


