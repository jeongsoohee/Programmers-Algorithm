import Foundation

/* 문제
 
    어떤 자연수를 제곱했을 때 나오는 정수를 제곱수라고 합니다. 정수 n이 매개변수로 주어질 때, n이 제곱수라면 1을 아니라면 2를 return하도록 solution 함수를 완성해주세요.

 */

/* 제한사항
 
    1 ≤ n ≤ 1,000,000
 
 */

func solution(_ n:Int) -> Int {
    //매개변수로 들어온 제곱수까지 판별해보기 위해 1...n까지 for문 돌리기
    for item in 1...n {
        // 1 ~ n 까지 정수를 제곱하며 n과 같다면 1을 return
        if item * item == n {
            return 1
        } else {
            // 제곱수의 패턴은 맨 뒷자리가 1, 4, 9, 6, 5, 6, 9, 4, 1, 0 로 끝나기때문에
            // 뒷자리에 해당되지 않는 것과, 제곱수가 아닐 때의 리턴값을 2로 설정하기
            if String(item * item).hasSuffix("2") && String(item * item).hasSuffix("3") && String(item * item).hasSuffix("7") && String(item * item).hasSuffix("8") {
                return 2
            }
        }
    }
    return 2
}
