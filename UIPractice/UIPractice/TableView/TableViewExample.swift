//
//  TableViewExample.swift
//  UIPractice
//
//  Created by emil kurbanov on 12.07.2022.
//

import UIKit

class FirstTableView: UIViewController {
    var array = ["Swift", "Objective-C", "C#", "C++", "Java"]
    let myTableVIew = UITableView()
    let identifireCell = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableVIew.frame = CGRect(x: 10, y: 100, width: 390, height: 600)
        myTableVIew.register(UITableViewCell.self, forCellReuseIdentifier: identifireCell)
        
         
        myTableVIew.dataSource = self
        myTableVIew.delegate = self
        myTableVIew.reloadData()
        self.view.addSubview(myTableVIew)
     
    }
  
    
}
extension FirstTableView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
}
extension FirstTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifireCell, for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    
    
}
