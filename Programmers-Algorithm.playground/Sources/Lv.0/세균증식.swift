import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    // 반환할 변수
    var result: Int = n
    // t시간 만큼이 흘렀을 때의 2배씩 증가하는 세균증식 수를 구하는 것이기 때문에
    // t시간 만큼까지의 for문을 돌리기
    // 1, 2, 3
    for _ in 1...t {
        // 2 x 2 = 4
        // 4 x 2 = 8
        // 8 x 2 = 16
        // 1시간이 흐를 때마다 세균 2배씩 증식해주기
        //(마지막 시간의 세균 증식 수를 알기위해 할당하기)
        result *= 2
    }
    
    return result
}
