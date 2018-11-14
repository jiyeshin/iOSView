//
//  ViewController.swift
//  TouchEvent1106
//
//  Created by 503-12 on 06/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var 터치상태: UILabel!
    @IBOutlet weak var 터치횟수: UILabel!
    @IBOutlet weak var 이미지뷰: UIImageView!
    
    //터치 관련 메소드
    //터치가 시작되면 호출되는 메소드
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     
        //터치를 1개만 하면 touches에서 첫번째 데이터를 꺼내면 됨.
        let touch = touches.first
    
        터치횟수.text = "\(touch!.tapCount)번 탭"
        터치상태.text = "터치를 한 상태입니다."
    }
    
    //터치가 이동할 때 호출되는 메소드
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        터치상태.text = "터치가 이동중 입니다."
        
        //발생한 터치 가져오기
        var touch = touches.first
        
        //이미지뷰에서 터치가 이동중이라면 터치의 좌표를 이미지뷰의 중앙점으로 설정
        if touch!.view == 이미지뷰{
            이미지뷰.center = touch!.location(in: self.view)
        }
    }
    
    //터치가 종료되었을 때 호출되는 메소드
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        터치상태.text = "터치가 종료되었습니다."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

