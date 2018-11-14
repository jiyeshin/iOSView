//
//  DetailViewController.swift
//  Transition1109
//
//  Created by 503-12 on 09/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    @IBOutlet weak var 웹킷뷰: WKWebView!
    //MasterViewController 로부터 데이터를 넘겨받ㅇ르 변수
    var addr : String?

    //MasterViewController 에서 테이블의 항목을 선택하면 호출되는 메소드
    func configureView() {
        //addr이 없을 때는 더조은 홈페이지 출력
        if addr == nil{
            addr = "http://tjoeun.co.kr"
        }
        //문자열로 된 주소를 url로 변환해서 웹뷰에 출력
        let url = URL(string: addr!)
        let request = URLRequest(url: url!)
        웹킷뷰.load(request)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

