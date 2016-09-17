//
//  AppNavigationDrawerController.swift
//  600Toeic
//
//  Created by Nguyễn Trần Hoài Trung on 7/19/16.
//  Copyright © 2016 Nguyễn Trần Hoài Trung. All rights reserved.
//

import UIKit
import Material

class AppNavigationDrawerController: NavigationDrawerController, NavigationDrawerControllerDelegate {

	override func prepare() {
		super.prepare()
		delegate = self

        depthPreset = .none
        Device.statusBarStyle = .lightContent
    }
}
