//
//  ForumViewController.swift
//  Msy
//
//  Created by Özenç Çelik on 4.01.2019.
//  Copyright © 2019 Özenç Çelik. All rights reserved.
//

import UIKit

class ForumViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    let groupImages = [UIImage(named: "newlyDiagnosed"), UIImage(named: "hormoneTherapy"), UIImage(named: "treatment"), UIImage(named: "lifestyle"), UIImage(named: "breastReconstruction"), UIImage(named: "tripleNegative"), UIImage(named: "survivorship"), UIImage(named: "livingStageIV"), UIImage(named: "relationships"), UIImage(named: "womenBehindRibbon"), UIImage(named: "careerAndCancer")]
    
    let groupTitles = ["Newly Diagnosed", "Hormone Theraphy", "Treatment and Side Effects", "Lifestyle", "Breast Reconstruction", "Triple Negative", "Survivorship", "Living with StageIV", "Relationships", "Women Behind the Ribbon", "Career and Cancer"]
    
    let groupDescription = ["Appointments, care, second opinions", "Receptor + cancer, treatments, fertility", "Treatments and symptom management", "Nutrition, fitness and integrative therapies", "Expanders, implants, flaps, grafts", "ER/PR/HER2-, BRCA1", "New beginnings and emotional health", "Self-care, planning, clinical trials", "Communication, family, dating, sex", "Education, advocacy, impact", "Disclosure, insurance, time-management"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return groupTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GroupCollectionViewCell
        
        cell.groupImage.image = groupImages[indexPath.row]
        cell.groupTitle.text = groupTitles[indexPath.row]
        cell.groupDescription.text = groupDescription[indexPath.row]
        
        
        //Make them circle
        cell.backgroundGroupImage.layer.cornerRadius = cell.backgroundGroupImage.frame.size.width / 2
        cell.backgroundGroupImage.clipsToBounds = true
        
        //cell.groupImage.layer.cornerRadius = 10
        //cell.groupImage.clipsToBounds = true
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Got clicked !!! ")
    }
    
    

}
