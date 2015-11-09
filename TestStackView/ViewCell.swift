//
//  ViewCell.swift
//  TestStackView
//
//  Created by ノーランワーナー on 2015/11/09.
//  Copyright © 2015年 test. All rights reserved.
//

import UIKit

class ViewCell: UITableViewCell {
    private(set) var dataObject: DataObject
    
    @IBOutlet private weak var userImageView: UIImageView!
    @IBOutlet private weak var userNameLabel: UILabel!
    @IBOutlet private weak var contentsLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    
    @IBOutlet private weak var dateLabelHeightConstraint: NSLayoutConstraint!
    
    required init?(coder aDecoder: NSCoder) {
        dataObject = DataObject()
        
        super.init(coder: aDecoder)
    }
    
    func setContents(dataObject: DataObject) {
        self.dataObject = dataObject
        
        userImageView.image = UIImage(named: dataObject.userImageName)
        userNameLabel.text = dataObject.userName
        contentsLabel.text = dataObject.contents
        dateLabel.text = dataObject.dateString
        dateLabelHeightConstraint.constant = dataObject.dateLabelHeight
        dateLabel.hidden = !dataObject.willShowDate
    }
    
    @IBAction func pressedInfoButton(sender: AnyObject) {
        print("Pressed info button")
    }
    
    @IBAction func pressedAction1Button(sender: AnyObject) {
        print("Pressed Action 1 button")
    }
    
    @IBAction func pressedAction2Button(sender: AnyObject) {
        print("Pressed Action 2 button")
    }
}

