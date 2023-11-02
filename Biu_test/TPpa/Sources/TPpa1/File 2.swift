
import TPpa2

import ClockHandRotationKit


public struct TPpa11 {
    public private(set) var text1 = "11Hello, World!"

    public init() {
        print(5)
    }
    
    public func bb11() {
        print(6)
        TPpa2().bb2()
        
        
        let json: [String:Any] = [
            "name": "KakaJSON",
            "url": "https://github.com/kakaopensource/KakaJSON",
            "a": 123,
            "dict" : [
                "name1": "KakaJSON",
                "url1": "https://github.com/kakaopensource/KakaJSON",
                "a1": 123,
            ],
            
            "arr" :
                [
                    ["result": 1.23, "name": "dog dog", "aa": [
                        "a": 123,
                        "b": "ccc",
                        "arr": [11,22,33]
                    ]],
                    ["result": 1.24, "name": "cat cat", "aa": [
                        "a": 345,
                        "b": "kkk",
                        "arr": [111,222,333]
                    ]]
                ]
            
        ]
        print(json["arr"])
        print(JSON(json)["arr"].arrayObject)
        
        
//        TPpa2().bb2()
    }
}
