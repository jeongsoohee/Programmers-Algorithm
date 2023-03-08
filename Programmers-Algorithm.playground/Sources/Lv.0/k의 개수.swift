import Foundation

/* 문제
 
    1부터 13까지의 수에서, 1은 1, 10, 11, 12, 13 이렇게 총 6번 등장합니다. 정수 i, j, k가 매개변수로 주어질 때, i부터 j까지 k가 몇 번 등장하는지 return 하도록 solution 함수를 완성해주세요.

 */

/* 제한사항
 
     1 ≤ i < j ≤ 100,000
     0 ≤ k ≤ 9
 
 */

private func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    //k의 와 같은 숫자를 만나게 되면 카운트 세줄 변수
    var count: Int = 0
    //for문 안에서 문자 하나와 같은건지 비교해보기 위해 매개변수 k를 String형태로 변경하기
    let strK: String = String(k)
    //i~j까지 for문 돌리기
    for num in i...j {
        //문자열로 for 문을 돌림으로서 숫자 하나하나 포함되어있는지 여부를 체크하고
        for chr in String(num) {
            if String(chr).contains(strK) {
                //포함되어있다면 count를 1씩 더해주기
                count += 1
            }
        }
    }
    return count
}

private func solution1(_ i:Int, _ j:Int, _ k:Int) -> Int {
    //반환할 변수 생성
    var result: Int = 0
    //i...j까지 for문 돌리기
    for num in i...j { // 1,2,3...10,11,12,13
        //정수를 문자열로 변환 후 //"1"..."10","11"
       result += String(num)
            //String(num)에서 문자 하나하나를 문자열로 변환하고 고차함수 map을 이용해  배열안에 각 요소를 저장
            .map{ String($0) }  //["1"], ["1","0"]
            // 각 요소를 구분해서 만들어놓은 map배열에서 하나씩 꺼낸 것을
            // filter고차함수를 이용해 k와 같은 문자열만 남긴 배열만 리턴하게되면
            //i부터 j까지 k가 포함되어있는 것만 count를 세서 더해주게 된다!
            .filter{ $0 == String(k) }.count
        
    }
    return result
    
}
