//
//  ViewController.swift
//  TableViewIntroductionLab
//
//  Created by Benjamin Stone on 8/6/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController:UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return Task.allTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let name = Task.allTasks[indexPath.row].name
        
        let name1 = Task.allTasks[indexPath.row].dueDate
//       let name1 = Task.allTasks[indexPath.row].dueDate
        let cell = tableView.dequeueReusableCell(withIdentifier: "names", for: indexPath)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = name
            cell.detailTextLabel?.text = name1.description
       
        }
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        tableView.dataSource = self

        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

