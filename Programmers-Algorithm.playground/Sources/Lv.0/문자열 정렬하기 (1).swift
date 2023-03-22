import Foundation

/* 문제
 
    문자열 my_string이 매개변수로 주어질 때, my_string 안에 있는 숫자만 골라 오름차순 정렬한 리스트를 return 하도록 solution 함수를 작성해보세요.
 */

/* 제한사항
 
     1 ≤ my_string의 길이 ≤ 100
     my_string에는 숫자가 한 개 이상 포함되어 있습니다.
     my_string은 영어 소문자 또는 0부터 9까지의 숫자로 이루어져 있습니다.
 
 */

private func solution(_ my_string:String) -> [Int] {
    //숫자만 담아서 반환 할 배열 생성
    var numberArray: [Int] = []
    //문자열을 오름차순으로 정렬 후 for문 돌리기
    for number in my_string.sorted() {
        //만약 문자를 Int로 변환했을 때 nil이 아니라면
        if Int(String(number)) != nil {
            //배열에 담아주기
            numberArray.append(Int(String(number))!)
        }
    }
    //오름차순으로 정렬되어진 숫자 담긴 배열 리턴하기
    return numberArray
}
