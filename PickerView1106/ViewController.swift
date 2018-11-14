//
//  ViewController.swift
//  PickerView1106
//
//  Created by 503-12 on 06/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var selectedRow = 0
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBAction func 버튼확인(_ sender: Any) {
        //피커뷰에서 선택된 행 번호 찾아오기
        //열변호에 해당하는 선택된 행번호를 저장
        let row = pickerView.selectedRow(inComponent: 0)
        let subRow = pickerView.selectedRow(inComponent: 1)
        print(mainData[row] + ": " + subData[row][subRow])
    }
    
    //메일 데이터와 서브 데이터를 저장할 변수
    var mainData : [String] = [String]()
    var subData : [[String]] = [[String]]()
    /*
    //pickerView에 출력할 데이터 배열
    var ar : [String] = [String] ()
    */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        /*
        // 배열의 데이터 추가
        ar.append("팀플레이스")
        ar.append("슈퍼스타트")
        ar.append("나의봄날")
        ar.append("소셜팩토리")
 */
        
        mainData.append("Home")
        mainData.append("True Colors")
        
        subData.append(["선택하시오", "Home","됐어","꿈에서","생각나","Love Dive","before The Show","오늘밤"])
        subData.append(["선택하시오","꽃이야","매일","true colors", "on my mind","오늘부터"])
        
    
        
        //pickerViewdml delegare와 dataSource 설정
        pickerView.delegate = self
        pickerView.dataSource = self
    }
}

//PickerView 출력을 위한 extension
extension ViewController : UIPickerViewDataSource, UIPickerViewDelegate{
    //열의 개수를 설정하는 메소드
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 2
    }
    
    //열별로 행의 개수를 설정하는 메소드
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if component == 0{
            return mainData.count
        }else{
           return subData[selectedRow].count
        }
    }
    
    //PickerView에 출력할 문자열을 설정하는 메소드.
    //return 하는 문자열이 피커뷰에 출력됨.
    //row가 행번호이고 component가 열번호
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        
        if component == 0{
            return mainData[row]
        }else{
            return subData[selectedRow][row]
        }
    }
    
    //피커 뷰의 선택이 변경되었을 때 호출되는 메소드
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        //첫번째 열의 선택이 변경되었을 때
        if component == 0{
            //선택된 행 번호를 selectedRow에 대입
            selectedRow = pickerView.selectedRow(inComponent: 0)
            
            //피커뷰의 두번째 열의 데이터를 다시 출력
            pickerView.reloadComponent(1)
        }
        
    }
}

