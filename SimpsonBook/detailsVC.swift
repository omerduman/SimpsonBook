//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by admin on 9.01.2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {

    
    var selectedSimpson:Simpson?
    
    
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text=selectedSimpson?.name
        jobLabel.text=selectedSimpson?.job
        imageView.image=selectedSimpson?.image
        

    }
    


}
