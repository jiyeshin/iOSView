//
//  SecondViewController.swift
//  ViewController1108
//
//  Created by 503-12 on 08/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //상위 뷰 컨트롤러로부터 넘겨받을 데이터 프로퍼티
    var data : String = ""
    
    @IBOutlet weak var 레이블두번째: UILabel!
   
    @IBAction func 버튼이동이전페이지(_ sender: Any) {
        //이전화면으로 돌아가기
        //자신을 출력한 뷰 컨트롤러에 대한 참조를 가져오기
        let parent = self.presentingViewController as! ViewController
        //데이터 넘겨주기
        parent.name = "냥냥냥냥냥"
        //현재 화면 제거
        parent.dismiss(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        //넘겨받은 데이터를 레이블에 출력
        레이블두번째.text = data
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
