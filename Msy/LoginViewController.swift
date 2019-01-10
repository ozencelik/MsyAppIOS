//
//  LoginViewController.swift
//  Msy
//
//  Created by Özenç Çelik on 2.01.2019.
//  Copyright © 2019 Özenç Çelik. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userProfileImage: UIImageView!
    
    @IBAction func logInButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        makeImageViewCircular()
        makButtonRounded()
    }
    
    private func makeImageViewCircular(){
        userProfileImage.layer.masksToBounds = false
        userProfileImage.layer.borderColor = UIColor.black.cgColor
        userProfileImage.layer.cornerRadius = userProfileImage.frame.height/8
        userProfileImage.clipsToBounds = true
    }
    
    private func makButtonRounded(){
        
        //logInButton.layer.cornerRadius = 100
        //logInButton.clipsToBounds = true
        
    }

}
