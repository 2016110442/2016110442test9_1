//
//  ViewController.swift
//  test9
//
//  Created by student on 2018/11/24.
//  Copyright © 2018年 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func actionsheet(_ sender: Any) {
        let alert = UIAlertController(title: "action shhet", message: "pleasr choose color", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "RED", style: .default, handler: { (action) in
            self.view.backgroundColor = UIColor.red
        }))
        alert.addAction(UIAlertAction(title: "GREEN", style: .default, handler: { (action) in
            self.view.backgroundColor = UIColor.green
        }))
        alert.addAction(UIAlertAction(title: "BLUE", style: .destructive, handler: { (action) in
            self.view.backgroundColor = UIColor.blue
        }))
        alert.addAction(UIAlertAction(title: "WHITE", style: .cancel, handler: { (action) in
            self.view.backgroundColor = UIColor.white
        }))
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "login message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "login", style: .default, handler: { (action) in
            
            guard let username = alert.textFields?.first?.text , let password = alert.textFields?.first?.text else {
                return
            }
            
            print("username : \(username) password : \(password)")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
            
        }))
        alert.addTextField { (textField) in
            textField.placeholder = "your user name?"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "your password?"
            textField.isSecureTextEntry = true
        }
        present(alert, animated: true, completion: nil)
        
    }
}

