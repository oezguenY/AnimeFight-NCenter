//
//  BaseScreen.swift
//  AnimeFight NCenter
//
//  Created by Özgün Yildiz on 21.03.22.
//

import UIKit

class BaseScreen: UIViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
        chooseButton.addTarget(self, action: #selector(goToSelection), for: .touchUpInside)
    }
    
    @objc func goToSelection() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
  
}

