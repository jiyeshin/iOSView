//
//  ViewController.swift
//  ImageSwipe1105
//
//  Created by 503-12 on 05/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //스크롤 뷰를 생성
    override func viewDidLoad() {
        super.viewDidLoad()
        var scrollView = UIScrollView.init(frame: CGRect.init(x: 100, y: 100, width: 300, height: 500))
        
        //스크롤 뷰에 배치될 ContentView
        let contentView = UIView.init(frame:CGRect.init(x: 0, y: 0, width: 3000, height: 500))
        
        //내용이 되는 뷰에 이미지 뷰들을 추가
        var total = 0
        for i in 0...9{
            //x좌표를 300씩 옮기면서 ImageView를 생성
            let imageView = UIImageView(frame:CGRect(x:total, y:0, width:300, height:500))
            print(imageView.frame)
            total = total + 300
            
            //imageView에 이미지 설정
            imageView.image = UIImage(named: "\(i).png")
            contentView.addSubview(imageView)
        }
        
        
        //contentView를 scrollView 위에 배치
        scrollView.addSubview(contentView)
        
        //스크롤뷰에서 스크롤을 사용할 수 있도록 설정
        scrollView.isScrollEnabled = true
        
        //scrollView를 현재 화면 위에 배치
        //스와이프할 때 페이지 단위로 이동하도록 설정
        scrollView.isPagingEnabled = true
        //스크롤뷰의 화면 사이즈 설정
        scrollView.contentSize = contentView.frame.size
        
        self.view.addSubview(scrollView)
    }
}

