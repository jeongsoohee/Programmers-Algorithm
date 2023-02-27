import Foundation

/* 문제
 
    정수 num과 k가 매개변수로 주어질 때, num을 이루는 숫자 중에 k가 있으면 num의 그 숫자가 있는 자리 수를 return하고 없으면 -1을 return 하도록 solution 함수를 완성해보세요.

 */

/* 제한사항
 
     0 < num < 1,000,000
     0 ≤ k < 10
     num에 k가 여러 개 있으면 가장 처음 나타나는 자리를 return 합니다.
 
 */

private func solution(_ num:Int, _ k:Int) -> Int {
    //k와 값이 일치하지 않다면 숫자를 올려줄 변수 생성
    var count: Int = 0
    //String로 면환 후 문자 하나하나를 k와 비교해보기
    for item in String(num) {
        //인덱스를 구하는 것이 아니기 떄문에 처음 시작해도 무조건 1을 올려주기
        count += 1
        //만약 문자와 k가 같다면 count반환하기
        if String(item) == String(k) {
            return count
        }
    }
    return -1
}


private func solution1(_ num:Int, _ k:Int) -> Int {
    //.enumerated()함수를 사용해 인덱스와 값을 모두 얻기
    for (index,value) in String(num).enumerated() {
        //String를 하나하나 꺼내게되면 Character타입이 되기때문에 타입 변환 해주기
        //k도 타입을 비교해보기 위해서 같은 String타입으로 변환하기
        if String(value) == String(k) {
            //만약 값이 같다면 인덱스는 자리보다 1이 작기때문에 +1을해주고 리턴하기
            return index + 1
        }
    }
    //위에 값을 모두 for문으로 돌렸을 때 k와 같은 값이 나오지않는다면 -1을 리턴하기
    return -1
}
