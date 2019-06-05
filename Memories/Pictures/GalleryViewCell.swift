//
//  GalleryViewCell.swift
//  Memories
//
//  Created by Sabrina Herrero on 6/1/19.
//  Copyright © 2019 Sabrina Herrero. All rights reserved.
//

import UIKit

class GalleryViewCell: UICollectionViewCell {

    @IBOutlet var rightImageView: UIImageView!
    @IBOutlet var midBotImageView: UIImageView!
    @IBOutlet var midTopImageView: UIImageView!
    @IBOutlet var leftImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        leftImageView = UIImageView()
        rightImageView = UIImageView()
        midBotImageView = UIImageView()
        midTopImageView = UIImageView()
    }
    
    func setupCell(left: UIImage, midTop: UIImage, midBot: UIImage, right: UIImage){
        
        self.leftImageView.image = left
        self.rightImageView.image = right
        self.midTopImageView.image = midTop
        self.midBotImageView.image = midBot
    }

}
