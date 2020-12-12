//
//  BoardCVCell.swift
//  Keto_Diet
//
//  Created by Ahmed Shoman on 12/12/20.
//  Copyright © 2020 Ahmed Shoman. All rights reserved.
//

import UIKit

class BoardCVCell: UICollectionViewCell {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var backView: UIView!{
        didSet{
            backView.layer.cornerRadius = 35
        }
    }
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var describtionLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(UINib(nibName: "QuestionCVCell", bundle: nil), forCellWithReuseIdentifier: "QuestionCVCell")
        
    }

}
extension BoardCVCell: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuestionCVCell", for: indexPath) as! QuestionCVCell
        return cell
    }
    
    
}
