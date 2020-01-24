//
//  HomeController.swift
//  190707_SideMenu
//
//  Created by Ankam Ajay Kumar on 18/01/20.
//  Copyright © 2020 Ankam Ajay Kumar. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    var delegate:HomeControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    func configureNavigationBar()
    {
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Menu", style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleMenuToggle))
    }
    
    @objc func handleMenuToggle()
    {
        delegate?.handleMenuTogle()
        
    }
    

}
