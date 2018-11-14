//
//  ViewController.swift
//  TableView1112
//
//  Created by 503-12 on 12/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //데이터 배열
    var ar : [Dictionary<String, String>] = []
    
    @IBOutlet weak var 테이블뷰: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dic1 = ["name":"김이름", "skill":"요리", "imageName":"1.png"]
        let dic2 = ["name":"최네임", "skill":"외국어", "imageName":"2.png"]
        let dic3 = ["name":"뫄뫄뫄", "skill":"운전", "imageName":"3.png"]
        let dic4 = ["name":"솨솨솨", "skill":"노래", "imageName":"4.png"]

        ar.append(dic1)
        ar.append(dic2)
        ar.append(dic3)
        ar.append(dic4)
        
        테이블뷰.delegate = self
        테이블뷰.dataSource = self
    }
}

//ViewController의 기능확장
extension ViewController : UITableViewDelegate, UITableViewDataSource{
    //행의 개수를 설정하는 메소드
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ar.count
    }
    
    //셀을 만들어주는 메소드
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = 테이블뷰.dequeueReusableCell(withIdentifier: "Cell") as? CustomCell
        
        //데이터 찾아오기
        var dic = ar[indexPath.row]
        cell!.라벨이름.text = dic["name"]
        cell!.라벨특기.text = dic["skill"]
        cell!.이미지뷰.image = UIImage(named:dic["imageName"]!)
        
        return cell!
    }
    
    //셀의 높이를 설정하는 메소드
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 100
    }
    
    
}
