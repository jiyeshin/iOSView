//
//  ViewController.swift
//  ViewAnimation1105
//
//  Created by 503-12 on 05/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //이미지 뷰에 출력할 UIImage 배열
    var imgArray = [UIImage]()
    
    //현재 출력 중인 이미지의 인덱스를 저장할 변수
    //?가 붙으면 nil을 저장할 수 있는 Optional 자료형
    var i : Int?
    
    //애니메이션 속도를 저장할 변수
    var speed : Float?
    
    @IBOutlet weak var 이미지뷰: UIImageView!
    @IBOutlet weak var 레이블: UILabel!
    @IBOutlet weak var 슬라이더: UISlider!
    
    @IBAction func 슬라이더체인지(_ sender: Any) {
        //변화된 슬라이더의 값을 speed에 저장
        speed = 슬라이더.value
        
        //애니메이션 진행 중일 때는 애니메이션을 멈추고 값을 적용한 다음 다시 시작
        if 이미지뷰.isAnimating{
            이미지뷰.stopAnimating()
            이미지뷰.animationDuration = TimeInterval(speed!)
            이미지뷰.startAnimating()
        }
    }
    
    @IBAction func 버튼이전메소드(_ sender: Any) {
        //이미지의 인덱스를 1감소시켜서 출력
        //인덱스는 0보다 작을 수 없으므로
        //0보다 작은 경우는 가장 마지막 번호로 변경
        i = i! - 1
        if i! < 0{
            i = imgArray.count-1
        }
        이미지뷰.image = imgArray[i!]
        레이블.text = "\(i!+1)/\(imgArray.count)"
    }
    
    @IBAction func 버튼시작메소드(_ sender: Any) {
        if 이미지뷰.isAnimating == true{
            이미지뷰.stopAnimating()
            (sender as! UIButton).setTitle("시작", for: .normal)
        }else{
            //애니메이션 시간 설정
            이미지뷰.animationDuration = TimeInterval(speed!)
            
            //애니메이션 시작
            이미지뷰.startAnimating()
            
            //이벤트가 발생항 인스턴스의 타이틀 변경
            (sender as! UIButton).setTitle(("중지"), for: .normal)
        }
    }
    
    @IBAction func 버튼다음메소드(_ sender: Any) {
        i = i! + 1
        if i! > imgArray.count - 1 {
            i = 0
        }
        이미지뷰.image = imgArray[i!]
        레이블.text = "\(i!+1)/\(imgArray.count)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //이미지 배열에 데이터 추가
        //파일 이름이 일련번호가 포함된 형태이면 반복문으로 추가 가능
        for x in 1...2{
            //nil을 리턴할 가능성이 있는 메소드를 호출한 경우에는 그 결과를 저장한 Optional로 만들어 주어야 해서
            //변수의 자료형 뒤에 !을 붙여 줘야 함.
            //let으로 변경도 해줘야 함.
            let image : UIImage! = UIImage(named:"\(x).png")
            imgArray.append(image)
        }
        
        //이미지 뷰에 애니메이션으로 사용할 이미지 배열 설정
        이미지뷰.animationImages = imgArray
        
        //i의 초기값 설정
        i = 0
        
        //애니메이션 속도도 초기화
        speed = 0.5
        
        //초기 이미지 설정
        이미지뷰.image = imgArray[0]
    }
}

