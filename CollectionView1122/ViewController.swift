//
//  ViewController.swift
//  CollectionView1122
//
//  Created by 503-12 on 22/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    //출력할 이미지 파일의 이름을 저장할 배열
    var imageNames = [String]()
    var imageNames2 = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 배열에 데이터 저장 (coffee1.jpg - coffee6.jpg)
        for i in 1...6{
            imageNames.append("coffee\(i).jpg")
           
        }
        for i in 1...4{
             imageNames.append("\(i).jpg")
        }
        
        //컬렉션 ㅂ의 이벤트와 출력을 담당할 인스턴스 지정
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

//Mark: collectionView의 delegate, datasource
extension ViewController:UICollectionViewDelegate, UICollectionViewDataSource{
    //출력할 데이터 개수를 설정하는 메소드
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return imageNames.count
    }
    //출력할 셀을 만들어주는 메소드
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //셀 만들기
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        //이미지 출력 설정
        cell.imgView.image = UIImage(named: imageNames[indexPath.row])
       
        
        return cell
    }
}

