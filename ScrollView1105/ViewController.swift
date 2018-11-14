//
//  ViewController.swift
//  ScrollView1105
//
//  Created by 503-12 on 05/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //imageView 변수 생성 - nil을 저장할 수 있도록 생성
    //!를 추가하면 사용을 할 때는 !을 붙일 필요가 없음.
    //?를 추가했다면 사용할 때마다 !를 붙여야 함.
    var imageView : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // imageView에 출력할 이미지 생성
        let image = UIImage(named: "green.jpg")
        
        //이미지를 이용해서 ImageView 생성
        imageView = UIImageView(image: image!)
        
        //이미지뷰 크기를 가져오기
        let imageSize = imageView.frame.size
        
        //스크롤 뷰를 전체 크기로 생성
        let scrollView = UIScrollView(frame: UIScreen.main.bounds)
        
        //이미지뷰가 스크롤이 가능하도록 설정
        imageView.isUserInteractionEnabled = true
        
        //스크롤 뷰가 스크롤이 가능하도록 설정
        scrollView.isScrollEnabled = true
        
        //스크롤뷰의 화면 크기 설정
        scrollView.contentSize = imageSize
        
        //스크롤뷰 위에 이미지 뷰 추가
        scrollView.addSubview(imageView)
        
        //스크롤뷰를 영역 밖으로 스크롤 할 수 없도록 하는 속성 설정
        scrollView.bounces = false
        
        //현재 뷰 컨트롤러의 뷰에 추가
        self.view.addSubview(scrollView)
        
        //scrollView의 delegate 설정
        scrollView.maximumZoomScale = 2.0
        scrollView.minimumZoomScale = 0.5
        
        //scrollView의 delegate 설정
        scrollView.delegate = self
        
    }
}

extension ViewController : UIScrollViewDelegate{
    func viewForZooming(in scrollView: UIScrollView) -> UIView?{
        return imageView
    }
}
