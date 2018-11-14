//
//  CustomCell.swift
//  TableView1112
//
//  Created by 503-12 on 12/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var 라벨이름: UILabel!
    @IBOutlet weak var 라벨특기: UILabel!
    @IBOutlet weak var 이미지뷰: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
