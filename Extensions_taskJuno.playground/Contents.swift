import Foundation


extension Date {
    static func getCustomDate () -> String {
        let date = DateFormatter()
        date.dateFormat = "dd/MM/yyyy"
        return date.string(from: Date())
    }
}

Date.getCustomDate()

//  Создайте расширение класса Float, которое вернет значение как сумму. Например 11200888 -> 11 200 888

extension Formatter {
    static var separator : NumberFormatter {
        let format = NumberFormatter()
        format.groupingSeparator = " "
        format.numberStyle = .decimal
        return format
    }
}



extension Float {
    var formatWithSeparator : String {
        return Formatter.separator.string(for: self) ?? ""
    }
}

let myFloat : Float = 12520.98
let convert = myFloat.formatWithSeparator



