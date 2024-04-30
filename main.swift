/** 变量声明 */
var tilte = "张三" // 变量
let description = "描述" // 常量
let age: Int = 10 // 类型注解 : Int

/**  基础类型 */
let minUInt: UInt = UInt.min // UInt
let maxUInt: UInt = UInt.max // UInt
let value: Int = Int.max // Int
let pi: Double = 3.1415 // Double，精确度很高，至少有15位数字
let arc: Float = 1.1 // Float,只有6位数字
let oranges: Bool = true // Bool
let char: Character = "s" // Character 字符
let someString: String = "Some string literal value" // String
let quotation: String = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.
"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
""" // 多行字符串


/**  可选类型 */
var empty: Int? //  声明一个可选常量或者变量但是没有赋值，它们会自动被设置为 nil
var possibleNumber: String? = "123"
possibleNumber = nil // 可选类型可以赋值为nil

/**  元组类型 */
let person: (String,Int) = ("李四", 18) // (Int,String),元组
let http404Error: (Int,String) = (statusCode:404, description: "no Find") // 定义元组的时候给单个元素命名,获取http404Error.statusCode
let (status, message) = http404Error // 解构赋值

/**  类型别名 */
typealias AudioSample = UInt16
let bigInt: AudioSample = AudioSample.max




/**  集合类型 */
// 数组(array)
var someInts = Array<Int>() // 函数方式创建
var someIntsSample = [Int]() // 函数方式创建,简写
var shoppingList: [String] = ["Eggs", "Milk"] // 字面量方式，推荐

someInts.append(1) // 添加
someInts = [] // 设置为空数组
var threeDoubles = Array(repeating: 0.0, count: 3) //  [Double] 数组，等价于 [0.0, 0.0, 0.0]
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles // 通过两个数组相加创建一个数组, 等价于 [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]

// 判断数组是否为空：shoppingList.isEmpty 
// 获取数组数量：shoppingList.count 
// 添加：shoppingList.append("lisi") 
// 获取： shoppingList[0]
// 赋值： shoppingList[0] = "Six eggs"
// 在某个指定索引值之前添加数据项：shoppingList.insert("Maple Syrup", at: 0)
// 移除最后一项： shoppingList.removeLast()
// 移除指定索引处数据项： shoppingList.remove(at: 0)

print(shoppingList[0]) 



// 集合（Sets）
var letters = Set<Character>() // 函数方式创建
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"] // 字面量方式，推荐

letters = [] // 设置为空Set

// 判断数组是否为空：favoriteGenres.isEmpty 
// 获取Set数量：favoriteGenres.count 
// 添加: favoriteGenres.insert("a")
// 移除： favoriteGenres.remove("Rock")
// 移除所有： favoriteGenres.removeAll()
// 检查集合中是否包含一个特定的值：favoriteGenres.contains("Funk")

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
// 排序： oddDigits.sorted() 
// 根据两个集合的所有值创建一个新的集合: oddDigits.union(evenDigits)   -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
// 根据根据两个集合的交集创建一个新的集合: oddDigits.intersection(evenDigits) -> []
// 根据根据两个集合不相交的值创建一个新的集合: oddDigits.symmetricDifference(singleDigitPrimeNumbers) ->  [1, 2, 9]
// 根据根据不在另一个集合中的值创建一个新的集合: oddDigits.subtracting(singleDigitPrimeNumbers) -> [1, 9]
// 判断一个集合中的所有值是否也被包含在另外一个集合中: oddDigits.isSubset(of: singleDigitPrimeNumbers)
// 判断一个集合是否包含另一个集合中所有的值: oddDigits.isSuperset(of: singleDigitPrimeNumbers)
// 判断两个集合是否不含有相同的值（是否没有交集）: oddDigits.isDisjoint(with: singleDigitPrimeNumbers)



// 字典(就是键值对映射)
var namesOfIntegers = [Int: String]() // 函数方式创建
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"] // 字面量方式，推荐

// 判断字典是否为空：airports.isEmpty 
// 获取字典数量：airports.count 
// 添加和修改(key存在则修改，不存在则添加): 第一种， airports["LHR"] = "London" 。第二种， airports.updateValue("LHR", forKey: "London")
// 移除： 第一种， airports["APL"] = nil。第二种， airports.removeValue(forKey: "APL")
// 移除所有： favoriteGenres.removeAll() 
// 检查集合中是否包含一个特定的值：favoriteGenres.contains("Funk")

/**  if 语句 */
if empty != nil {
    print("possibleNumber不为空")
}else {
    print("possibleNumber为空")
}

/**  可选绑定 */
// 可选绑定（optional binding）来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量。可选绑定可以用在 if 和 while 语句中
// 这段代码可以被理解为：如果 phoneConstantName 返回的可选 Int 包含一个值，创建一个叫做 constantName 的新常量并将可选包含的值赋给它。
// constantName 常量可以在 if 语句的第一个分支中使用。它已经被可选类型 包含的 值初始化过，所以不需要再使用 ! 后缀来获取它的值
let phoneConstantName: Int? = 20

if let constantName = phoneConstantName {
    print("\'\(constantName)\' has an integer value of \(phoneConstantName!)") // 非空断言 : phoneConstantName!
}else {
    print("phoneConstantName没有值") 
}

// 你可以包含多个可选绑定或多个布尔条件在一个 if 语句中，只要使用逗号分开就行。只要有任意一个可选绑定的值为 nil，或者任意一个布尔条件为 false，则整个 if 条件判断为 false。
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

/**  空合运算符 */
let defaultColorName = "red"
var userDefinedColorName: String?   //默认值为 nil

var colorNameToUse = userDefinedColorName ?? defaultColorName // userDefinedColorName 的值为空，所以 colorNameToUse 的值为 "red"



/**  for循环遍历 */
// 区间运算符
let names = ["Anna", "Alex", "Brian", "Jack"]
//（a...b）定义一个包含从 a 到 b（包括 a 和 b）的所有值的区间
for index in 1...5 {
    print("\(index) * 5 = \(index * 5)")
}
// 半开区间运算符,（a..<b）定义一个从 a 到 b 但不包括 b 的区间
for i in 0 ..< names.count { 
   print("第 \(i + 1) 个人叫 \(names[i])")
}
// 单侧区间,可以表达往一侧无限延伸的区间,例如，一个包含了数组从索引 2 到结尾的所有值的区间
for name in names[2...] {
     print(name)
}
for name in names[...2] {
     print(name) 
}


// 遍历数组
for item in shoppingList {
    print(item)
}
// 如果同时需要每个数据项的值和索引值，可以使用 enumerated() 方法来进行数组遍历。enumerated() 返回一个由索引值和数据值组成的元组数组
for (index, value) in shoppingList.enumerated() {
    print("Item \(String(index + 1)): \(value)")
}


// 遍历Set集合
// 无顺序遍历
for genre in favoriteGenres {
    print("无顺序遍历：\(genre)")
}
// 根据排序后的结果遍历
for genre in favoriteGenres.sorted() {
    print("有顺序遍历\(genre)")
}


// 遍历字典
// 遍历key-value
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
// 遍历key
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
// 据排序后的结果遍历key
for airportCode in airports.keys.sorted() {
    print("Airport code: \(airportCode)")
}
// 遍历value
for airportName in airports.values {
    print("Airport name: \(airportName)")
}