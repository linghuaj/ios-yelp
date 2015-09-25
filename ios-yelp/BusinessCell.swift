//
//  TableCell.swift
//  ios-yelp
//
//  Created by Linghua Jin on 9/23/15.
//  Copyright © 2015 ljin. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cellImg: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var ratingImg: UIImageView!
    var business: Business! {
        didSet {
            NSLog("business.imageURL \(business.imageURL)")
            nameLabel.text = business.name
            //to make sure the image shows up https://github.com/codepath/ios_guides/wiki/App-Transport-Security
            cellImg.setImageWithURL(business.imageURL)
            categoryLabel.text = business.categories
            locationLabel.text = business.address
            reviewCountLabel.text = "\(business.reviewCount!) reviews"
            ratingImg.setImageWithURL(business.ratingImageURL)
            distanceLabel.text = business.distance
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellImg.layer.cornerRadius = 4
        cellImg.clipsToBounds = true
    }
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
