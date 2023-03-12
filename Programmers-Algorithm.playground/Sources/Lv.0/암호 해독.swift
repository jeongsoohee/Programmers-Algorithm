import Foundation

/* 문제
 
     군 전략가 머쓱이는 전쟁 중 적군이 다음과 같은 암호 체계를 사용한다는 것을 알아냈습니다.

     암호화된 문자열 cipher를 주고받습니다.
     그 문자열에서 code의 배수 번째 글자만 진짜 암호입니다.
     문자열 cipher와 정수 code가 매개변수로 주어질 때 해독된 암호 문자열을 return하도록 solution 함수를 완성해주세요.

 */

/* 제한사항
 
     1 ≤ cipher의 길이 ≤ 1,000
     1 ≤ code ≤ cipher의 길이
     cipher는 소문자와 공백으로만 구성되어 있습니다.
     공백도 하나의 문자로 취급합니다.
 
 */

private func solution(_ cipher:String, _ code:Int) -> String {
    // cipher안에있는 문자 하나씩 카운트 (인덱스로하면 0으로 시작하기 때문에 따로 올려주기!)
    var count: Int = 1
    //count랑 code로 나누었을 때 나머지가 0일경우에 담을 변수 생성
    var result: String = ""
    //for문으로 문자 하나씩 꺼내기
    for chr in cipher {
        //문자의 자리수(count)를 code로 나누었을 때 0이라면 계속 더해서 담아주기
        if count % code == 0 {
            result += String(chr)
        }
        //문자 하나를 다 판별하면 count도 하나씩 올려주기
        count += 1
    }
    return result
}
