//
//  PicturesViewController.swift
//  Memories
//
//  Created by Sabrina Herrero on 6/1/19.
//  Copyright © 2019 Sabrina Herrero. All rights reserved.
//

import UIKit

class PicturesViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1;
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCell", for: indexPath) as! GalleryViewCell
        //access the image in the cell
        let img:UIImage = UIImage(named: "DSC_0502 - fixed")!
        
        cell.setupCell(left:img , midTop: img, midBot: img, right: img)
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
