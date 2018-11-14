import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var 테이블뷰: UITableView!

    //출력할 문자열을 저장할 변수
    var data:Array<String> = []
    //분류한 데이터들을 저장할 변구
    var sectioData:Array<Dictionary<String,Array>> = []
    //분류할 때 사용할 한글 자음 배열
    var indexes:Array<String> = []
    
    //문자열을 매개변수로 받아서 첫글자의 자음을 리턴하는 메소드
    func subtract(data:String)->String{
        var result = data.compare("나")
        if result == ComparisonResult.orderedAscending{
            return "ㄱ"
        }
        result = data.compare("다")
        if result == ComparisonResult.orderedAscending{
            return "ㄴ"
        }
        result = data.compare("라")
        if result == ComparisonResult.orderedAscending{
            return "ㄷ"
        }
        result = data.compare("마")
        if result == ComparisonResult.orderedAscending{
            return "ㄹ"
        }
        result = data.compare("바")
        if result == ComparisonResult.orderedAscending{
            return "ㅁ"
        }
        result = data.compare("사")
        if result == ComparisonResult.orderedAscending{
            return "ㅂ"
        }
        result = data.compare("아")
        if result == ComparisonResult.orderedAscending{
            return "ㅅ"
        }
        result = data.compare("자")
        if result == ComparisonResult.orderedAscending{
            return "ㅇ"
        }
        result = data.compare("차")
        if result == ComparisonResult.orderedAscending{
            return "ㅈ"
        }
        result = data.compare("카")
        if result == ComparisonResult.orderedAscending{
            return "ㅊ"
        }
        result = data.compare("타")
        if result == ComparisonResult.orderedAscending{
            return "ㅋ"
        }
        result = data.compare("파")
        if result == ComparisonResult.orderedAscending{
            return "ㅌ"
        }
        result = data.compare("하")
        if result == ComparisonResult.orderedAscending{
            return "ㅍ"
        }
        result = data.compare("하")
        if result == ComparisonResult.orderedAscending{
            return "ㅎ"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        테이블뷰.delegate = self
        테이블뷰.dataSource = self
        
        data = ["이야", "대다나다", "끝판왕", "머릿속에뭐들었","세상참만만하다그치", "애들이","보살이다","어떻게저런놈이랑","몇개월을","같이사냐고","게다가","챙겨주기까지했음","불도의경지다","울애들","천사다천사", "와우"]
        
        indexes = ["ㄱ", "ㄴ", "ㄷ", "ㄹ", "ㅁ", "ㅂ", "ㅅ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
        
        //분류하기
        //데이터를 뷴류하기 위한 배열 생성
        var temp : [[String]] = Array
        
        var i = 0
        while i < indexes.count{
            let firstName = indexes[i]
            var j = 0
            while j < data.count{
                let str = data[i]
                if firstName == subtract(data: str){
                    temp[i].append(str)
                }
                j=j+1
            }
            i=i+1
        }
        
        i=0
        while i < indexes.count{
            if temp[i] > 0{
                var dic : Dictionary<String, Any> = [:]
                dic["section_name"] = indexes[i]
                dic["data"] = temp[i]
                sectionData.append(dic)
                
            }
            i=i+1
        }
        
    }
}

extension ViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let dic = sectioData[section]
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

