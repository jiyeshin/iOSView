//
//  ViewController.swift
//  LoginDialong1107
//
//  Created by 503-12 on 07/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //화면에 뷰가 보여질 때 보여지는 메소드
    override func viewWillAppear(_ animated:Bool){
        super.viewWillAppear(animated)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        if appDelegate.session == nil{
            print("로그인이 안된 상태 입니다.")
        }else{
            print("\(appDelegate.session!)님이 로그인 되어 있습니다.")
        }
    }
    
    
    @IBOutlet weak var 로그인결과: UILabel!
    
    @IBAction func 로그인버튼(_ sender: Any) {
        //자신의 앱에 있는 AppDelegate 클래스의 객체에 접근
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //공유 변수를 nil로 설정
        appDelegate.session = nil
        
        
        //대화상자 생성
        let longinDialog = UIAlertController.init(title: nil, message: "로그인", preferredStyle: .alert)
        
        //텍스트 필드 추가
        //여기서 handlersms 텍스트 필드의 모양을 설정
        longinDialog.addTextField(configurationHandler: {(tf) in tf.placeholder = "아이디를 입력하시오"
            tf.isSecureTextEntry = false
        })
        longinDialog.addTextField(configurationHandler: {(tf) in tf.placeholder = "비밀번호를 입력하시오"
            tf.isSecureTextEntry = true
        })
        
        let 취소 = UIAlertAction.init(title: "취소", style: .cancel)
        let 확인 = UIAlertAction.init(title: "확인", style: .default){
            (btn) in
            //첫번째 텍스트 필드와 두번째 텍스트 필드의 입력 내용을 가져오기
            let loginid = longinDialog.textFields?[0].text
            let loginpw = longinDialog.textFields?[1].text
            
            //id와 pw를 비교해서 로그인 여부 결정
            if loginid == "root" && loginpw == "1234"{
                self.로그인결과.text = "로그인에 성공하셨습니다."
                //자신의 앱에 있는 AppDelegate 클래스의 객체에 접근
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                
               //
                appDelegate.session = loginid
            }else{
                self.로그인결과.text = "아이디나 비밀번호가 잘못되었습니다."
            }
            
        }
        //버튼을 대화상자에 부착
        longinDialog.addAction(취소)
        longinDialog.addAction(확인)
        
        //화면에 출력
        self.present(longinDialog, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

