//
//  ViewController.swift
//  Gesture1106
//
//  Created by 503-12 on 06/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //탭 동작이 발생했을 때 수행할 메소드
    @objc func tapMethod(sender: UITapGestureRecognizer){
        print("더블클릭")
    }
    
    @IBOutlet weak var 토끼: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(tapMethod(sender:)))
        //제약조건 설정
        tapGesture.numberOfTapsRequired = 2
        
        //뷰와 제스쳐 연결
        토끼.addGestureRecognizer(tapGesture)
    }
}

