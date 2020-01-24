//
//  ContainerController.swift
//  190707_SideMenu
//
//  Created by Ankam Ajay Kumar on 18/01/20.
//  Copyright © 2020 Ankam Ajay Kumar. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    
    var menuController:UIViewController!
    var centerController:UIViewController!
    var isExpanded = false

    override func viewDidLoad() {
        super.viewDidLoad()

        configureHomeController()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle
        {
        return .lightContent
    }

    func configureHomeController()
    {
        var homeController = HomeController()
        centerController = UINavigationController(rootViewController: homeController)
        homeController.delegate = self
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
        
    }
    
    func configureMenuController()
    {
        if menuController == nil
        {
            //add our menu controller here
            menuController = MenuController()
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
        }
    }
    
    func showMenuController(shouldExpand: Bool)
    {
        if shouldExpand
        {
            //show menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 200
                
            }, completion: nil)
        }
        else
        {
            //hide menu
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            
            self.centerController.view.frame.origin.x = 0
        }, completion: nil)
        }
    }
    
}

extension ContainerController: HomeControllerDelegate
{
    func handleMenuTogle() {
        
        if !isExpanded
        {
            configureMenuController()
        }
        
        isExpanded = !isExpanded
        
        showMenuController(shouldExpand: isExpanded)
    }
    
    
}
