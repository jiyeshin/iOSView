//
//  ViewController.swift
//  Navigation1108
//
//  Created by 503-12 on 08/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func 버튼이동디테일뷰(_ sender: Any) {
        //storyboard 파일에 만든 뷰 컨트롤러 인스턴스 만들기
        let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        //데이터 넘겨주기
        detailViewController.category = "먀먀먀먀먀"
        
        //화면에 푸시
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    //세그웨이를 이용해서 이동할 때 호출되는 메소드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //이동할 뷰 컨트롤러에 대한 참조를 가져오기
        let detailViewController = segue.destination as! DetailViewController
        
        //데이터를 설정
        detailViewController.category = "부부부부부부부"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

