//
//  DetailViewController.swift
//  Navigation1108
//
//  Created by 503-12 on 08/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    //이전 뷰 컨트롤러에서 넘겨받을 데이터
    var category : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        //타이틀 설정
        self.title = category
       
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
