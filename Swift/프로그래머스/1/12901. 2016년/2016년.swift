func solution(_ a: Int, _ b: Int) -> String {
    let daysInMonth = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let weekDays = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    
    let totalDays = daysInMonth.prefix(a - 1).reduce(0, +) + b
    return weekDays[(totalDays - 1) % 7]
}
