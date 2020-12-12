//
//  BoardVC.swift
//  Keto_Diet
//
//  Created by Ahmed Shoman on 12/12/20.
//  Copyright © 2020 Ahmed Shoman. All rights reserved.
//

import UIKit

class BoardVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func goTapped(_ sender: UIButton) {
        let VC = BoardCVC(collectionViewLayout: UICollectionViewFlowLayout())
        present(VC, animated: true, completion: nil)
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
