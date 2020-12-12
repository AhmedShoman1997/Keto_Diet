//
//  BoardCVC.swift
//  Keto_Diet
//
//  Created by Ahmed Shoman on 12/12/20.
//  Copyright © 2020 Ahmed Shoman. All rights reserved.
//

import UIKit


private let reuseIdentifier = "BoardCVCell"

class BoardCVC: UICollectionViewController {
    //MARK: - Variable
    let mainText = ["معلومة ١ عن الابلكيشن","معلومة ٢ عن الابلكيشن","معلومة ٣ عن الابلكيشن"]
    let desc1 = """
يتم هنا اضافه وصف للمعلومة المذكورة
اعلاه، على ان تكون مكونه من ثلاث
اسطر.
"""
    let pageNum = [0,1,3]
    
    
    //MARK: - VC Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: - Helper Function
    func setupUI() {
        if let cellDir = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            cellDir.scrollDirection = .horizontal
            
        }
        collectionView.isPagingEnabled = true
        collectionView.register(UINib(nibName: reuseIdentifier, bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
        
      
    }
    
    // MARK: UICollectionViewDataSource
   
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return mainText.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! BoardCVCell
        cell.titleLabel.text = mainText[indexPath.row]
        cell.describtionLabel.text = desc1
        cell.pageControl.currentPage = pageNum[indexPath.row]
        
        for i in 0...1 {
            if indexPath.row == i {
                cell.questionView.isHidden = true
                 cell.questionLabel.isHidden = true
            }
        }
        
        return cell
    }
}
extension BoardCVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: SCREENWIDTH, height: SCREENHEIGHT)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

