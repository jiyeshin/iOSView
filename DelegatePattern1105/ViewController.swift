//
//  ViewController.swift
//  DelegatePattern1105
//
//  Created by 503-12 on 05/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var 텍스트뷰: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 텍스트뷰에 이벤트가 발생하면 현재 클래스에서 메소드를 찾아서 실행시킴
        텍스트뷰.delegate = self
    }
}

//ViewController의 기능을 확장
extension ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_: UITextField) -> Bool{
        print("리턴키를 누르셨습니다.")
        
        return true
        
    }
    
}
