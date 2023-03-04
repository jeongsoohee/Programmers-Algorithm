import Foundation

/* 문제
 
    my_string은 "3 + 5"처럼 문자열로 된 수식입니다. 문자열 my_string이 매개변수로 주어질 때, 수식을 계산한 값을 return 하는 solution 함수를 완성해주세요.
 */

/* 제한사항
 
     연산자는 +, -만 존재합니다.
     문자열의 시작과 끝에는 공백이 없습니다.
     0으로 시작하는 숫자는 주어지지 않습니다.
     잘못된 수식은 주어지지 않습니다.
     5 ≤ my_string의 길이 ≤ 100
     my_string을 계산한 결과값은 1 이상 100,000 이하입니다.
     my_string의 중간 계산 값은 -100,000 이상 100,000 이하입니다.
     계산에 사용하는 숫자는 1 이상 20,000 이하인 자연수입니다.
     my_string에는 연산자가 적어도 하나 포함되어 있습니다.
     return type 은 정수형입니다.
     my_string의 숫자와 연산자는 공백 하나로 구분되어 있습니다.
 
 */

private func solution(_ my_string:String) -> Int {
    //.components는 문자열을 [String]로 반환해 주는데
    // " "을 기준으로 배열을 만들고 담아주기!
    let myString: [String] = my_string.components(separatedBy: " ")
    // + 면 true , - 면 false로 설정하기
    var isSum: Bool = true
    //String를 Int로 변환 후 계산해서 반환 할 변수 생성
    var result: Int = 0
    
    //공백을 기준으로 나뉘어진 [String]을 for문으로 돌리기
    //현재 ["3", "+", "4"]
    for str in myString {
        
        //만약 요소가 + 면 true 처리
        if str == "+" {
            isSum = true
          //요소가 - 면 false 처리
        } else if str == "-" {
            isSum = false
          // +, - 전부 해당이 안되면 숫자이기 떄문에
        } else {
            //result가 0이라면 처음 디폴트로 저장했던 값 그대로이기 때문에 할당해주기
            //처음 숫자를 넣으면 만날 일이 없다!
            if result == 0 {
                result = Int(str)!
              // isSum이 true면 +
            } else if isSum {
                result += Int(str)!
              // isSum이 false면 -
            } else {
                result -= Int(str)!
            }
        }
    }
    return result
}
