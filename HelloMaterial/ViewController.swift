//
//  ViewController.swift
//  HelloMaterial
//
//  Created by Nguyễn Trần Hoài Trung on 9/17/16.
//  Copyright © 2016 Nguyễn Trần Hoài Trung. All rights reserved.
//

import UIKit
import Material

class ViewController: UIViewController {

    var inChoiceMode = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.backgroundColor = UIColor.blue

        navigationItem.titleLabel.textAlignment = .left
        navigationItem.titleLabel.font = RobotoFont.medium(with: 18)
        navigationItem.titleLabel.textColor = Color.white
        
        showDefaultModeNavigationItems()
    }

    fileprivate func showDefaultModeNavigationItems() {
        
        // I need this textAlignment is LEFT
        navigationItem.title = "Normal Mode"
        
        ////////////// BUG HERE - UNCOMMENT TO SEE BUG ///////////
//        navigationItem.titleLabel.textAlignment = .left
        /////////////////////////
        
        // Navigation Items
        for btn in navigationItem.leftViews {
            btn.removeFromSuperview()
        }
        
        for btn in navigationItem.rightViews {
            btn.isHidden = true
            btn.removeFromSuperview()
        }
        
        let menuButton = makeNavigationBarButton(Icon.icon("ic_menu_white"), action: #selector(handleMenuButton))
        navigationItem.leftViews = [menuButton]
        let searchButton = makeNavigationBarButton(Icon.cm.search, action: #selector(onSearchButtonClicked))
        
        let filterImage: UIImage? = UIImage.init(named: "Filter")
        let filterButton = makeNavigationBarButton(filterImage, action: #selector(onFilterButtonClicked))
        
        navigationItem.rightViews = [filterButton, searchButton]
    }
    
    fileprivate func showChoiceModeNavigationItems() {
        
        // I need this textAlignment is CENTER
        navigationItem.title = "Choice mode"

        ////////////// BUG HERE - ENBLE TO SEE BUG ///////////
//        navigationItem.titleLabel.textAlignment = .center
        /////////////////////////
        
        // Navigation Items
        for btn in navigationItem.leftViews {
            btn.removeFromSuperview()
        }
        
        for btn in navigationItem.rightViews {
            btn.isHidden = true
            btn.removeFromSuperview()
        }
        
        let cancelButton = makeNavigationBarButton(Icon.cm.close, action: #selector(onCancelButtonClicked))
        let selectAllImage: UIImage? = UIImage.init(named: "SelectAll")
        let selectAllButton = makeNavigationBarButton(selectAllImage, action: #selector(onSelectAllButtonClicked))
        
        navigationItem.leftViews = [selectAllButton]
        navigationItem.rightViews = [cancelButton]
    }
    
    func makeNavigationBarButton(_ image: UIImage?, action: Selector?, tintColor: UIColor = UIColor.white, pulseColor: UIColor = UIColor.white) -> UIButton {
        let button = IconButton()
        button.pulseColor = pulseColor
        button.tintColor = tintColor
        button.setImage(image, for: .normal)
        button.setImage(image, for: .highlighted)
        
        if action == nil {
            button.isEnabled = false
        } else {
            button.addTarget(self, action: action!, for: .touchUpInside)
        }
        
        return button
    }
    
    @IBAction func showHideChoiceMode(_ sender: AnyObject) {
        
        if !inChoiceMode {
            showChoiceModeNavigationItems()
        }else{
            showDefaultModeNavigationItems()
        }
        inChoiceMode = !inChoiceMode
    }

    func onSearchButtonClicked(){
        
    }
    
    func onFilterButtonClicked(){
        
    }
    
    func handleMenuButton(){
        
    }
    
    func createDeskFromVocs(){
        
    }
    
    func addVocsToDesk(){
        
    }
    
    func onSelectAllButtonClicked(){
        
    }

    func onCancelButtonClicked(){
        
    }

}

