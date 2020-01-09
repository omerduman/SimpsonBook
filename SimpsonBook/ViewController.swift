//
//  ViewController.swift
//  SimpsonBook
//
//  Created by admin on 9.01.2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{

    var mySimpsons=[Simpson]()
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource=self
        tableView.delegate=self
        
        let homer=Simpson(simpsonName: "Homer Simpson", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "homer")!)
         
        let marge = Simpson(simpsonName: "Marge Simpson", simpsonJob: "Housewife", simpsonImage: UIImage(named: "marge")!)
             
              let bart = Simpson(simpsonName: "Bart Simpson", simpsonJob: "Student", simpsonImage: UIImage(named: "bart")!)
             
              let lisa = Simpson(simpsonName: "Lisa Simpson", simpsonJob: "Student", simpsonImage: UIImage(named: "lisa")!)
             
              let maggie = Simpson(simpsonName: "Maggie Simpson", simpsonJob: "Baby", simpsonImage: UIImage(named: "maggie")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        cell.textLabel?.text=mySimpsons[indexPath.row].name
        return cell
    }
    

}

