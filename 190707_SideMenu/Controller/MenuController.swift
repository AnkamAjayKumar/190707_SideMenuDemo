//
//  MenuController.swift
//  190707_SideMenu
//
//  Created by Ankam Ajay Kumar on 18/01/20.
//  Copyright © 2020 Ankam Ajay Kumar. All rights reserved.
//

import UIKit

class MenuController: UIViewController {
    
    var tableView:UITableView!
    var titles = ["Profile", "Tasks", "Daily Status", "Leaves"]

    override func viewDidLoad() {
        super.viewDidLoad()

        configureTableView()
    }
    

    func configureTableView()
    {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MenuCell.self, forCellReuseIdentifier: "menu")
        tableView.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        tableView.separatorStyle = .none
        tableView.rowHeight = 80
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }

}

extension MenuController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "menu", for: indexPath) as! MenuCell
        
        cell.textLabel?.text = titles[indexPath.row]
        return cell
    }
    
    
}
