//
//  ViewController.swift
//  jsonprac
//
//  Created by apple on 27/12/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionDis: UICollectionView!
    var conName = [name]()
    override func viewDidLoad() {
        super.viewDidLoad()
    
        guard let url = URL(string: "https://api.androidhive.info/json/movies.json") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) {(data, res, err) in

          print("cor")
            
            if err == nil{
            do{
            self.conName = try! JSONDecoder().decode([name].self, from: data!)
            }catch {
                print("error")
            }
                
            
            
            DispatchQueue.main.async {
              self.collectionDis.reloadData()
            }
            }
            
    }.resume()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return conName.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newCollectionViewCell", for: indexPath) as! newCollectionViewCell
    
        cell.nameLbl.text = conName[indexPath.row].title.capitalized
        
        //let defLink = "https://api.androidhive.info"
       let  compLink = conName[indexPath.row].image
         cell.imgVew.downloadedFrom(link: compLink)
        cell.imgVew.clipsToBounds = true
        cell.imgVew.layer.cornerRadius = cell.imgVew.frame.height / 2
        cell.imgVew.contentMode = .scaleAspectFill
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let stBord:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newVC = stBord.instantiateViewController(withIdentifier: "connViewController") as! connViewController
        
//        newVC.lableVC.text = "conName[indexPath.row].title"
        newVC.lablTitle = conName[indexPath.row].title
        let  compLinkTwo = conName[indexPath.row].image
        let urlJson = URL(string: compLinkTwo)
        let datajson = try! Data(contentsOf: urlJson!)
        let imgJson = UIImage(data: datajson)
        DispatchQueue.main.async {
            newVC.imgVC.image = imgJson
        }
        
        
//        newVC.imgTitle.downloadedFromNV(link: compLinkTwo)
        
//        newVC.imgTitle = conName[indexPath.row].image
//        newVC.imgTitle = conName[indexPath.row].image
        
        
//                newVC.imgTitle = conName[indexPath.row].image
//        newVC.imgTitle.downloadedFrom
        
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    
}

