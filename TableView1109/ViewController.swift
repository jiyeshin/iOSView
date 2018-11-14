//
//  ViewController.swift
//  TableView1109
//
//  Created by 503-12 on 09/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var 테이블뷰: UITableView!
    
    //테이블 뷰에 출력할 데이터 배열 선언
    var names : [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        names.append("떡튀순")
        names.append("어묵김밥")
        names.append("섭웨이에그마요")
        names.append("카츠야카츠니우동")
        names.append("롯리티렉스")
      
        //테이블 뷰의 delegate와 dataSource 지정
        테이블뷰.delegate = self
        테이블뷰.dataSource = self
    }


}
//테이블 뷰 관련 메소드
extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    //섹션 별 행의 개수를 리턴하는 메소드
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return names.count
    }
    
    //셀을 생성해주는 메소드
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //재사용 가능한 셀 가져오기
        var cell = 테이블뷰.dequeueReusableCell(withIdentifier: "Cell")
        
        //재사용 가능한 셀이 없으면 셀을 새로 생성
        if cell == nil{
           cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        }
        
        //셀의 레이블에 names 배열의 데이터를 출력
        cell?.textLabel?.text = names[indexPath.row]
        
        return cell!
    }
}

