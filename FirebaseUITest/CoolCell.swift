//
//  CoolCell.swift
//  FirebaseUITest
//
//  Created by AndAnotherOne on 8/22/16.
//  Copyright © 2016 AndAnotherOne. All rights reserved.
//

import UIKit

class CoolCell: UITableViewCell {

    
    @IBOutlet weak var title: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    

}
