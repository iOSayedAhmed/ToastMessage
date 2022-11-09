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
    }

    @IBAction func showToast(_ sender: UIButton) {
        ToastManager.shared.showToast(message: "Please fill all text fiels. 🫥", type: .message, view: self.view)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

