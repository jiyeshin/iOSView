//
//  ViewController.swift
//  CellStyle1109
//
//  Created by 503-12 on 09/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tb: UITableView!
    
    //출력할 데이터 배열
    var data : [VO] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.title = "음료 메뉴"
        
        let vo1 = VO()
        vo1.category = "우유"
        vo1.image = "1.png"
        vo1.name = "바나나우유라이트"
        data.append(vo1)
        
        let vo2 = VO()
        vo2.category = "우유"
        vo2.image = "2.png"
        vo2.name = "바나나우유오리지널"
        data.append(vo2)
        
        let vo3 = VO()
        vo3.category = "탄산음료"
        vo3.image = "3.jpg"
        vo3.name = "사이다"
        data.append(vo3)
    }
}

//테이블뷰 출력을 위한 extension
extension ViewController : UITableViewDataSource, UITableViewDelegate{
    
    //섹션별 행의 개수를 설정하는 메소드 - 필수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return data.count
    }
    
    //셀을 만들어주는 메소드
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        //재사용 가능한 셀이 있으면 그 셀을 이용
        var cell = tb.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil{
            cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "Cell")
        }
        //배열에서 행번호에 해당하는 데이터 찾아오기
        let sub : VO = data[indexPath.row]
        
        //데이터를 셀에 출력
        cell?.textLabel?.text = sub.name
        cell?.detailTextLabel?.text = sub.category
        cell?.imageView?.image = UIImage(named:sub.image)
        
        return cell!
    }
}

