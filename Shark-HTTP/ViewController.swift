//
//  ViewController.swift
//  Shark-HTTP
//
//  Created by WEI-TSUNG CHENG on 2020/10/26.
//

import UIKit

class ViewController: UIViewController {

    var api3: StarWarsAPI!
    var api4: OdooBugAPI!
    var api5: TwilioAPI!
    
    var api100: TwilioAPIPostWithDataBody!
    var api101: TwilioAPIPostWithDataBodyTwo!
    var api200: TwilioAPIPostWithFormBody!
    var api300: TwilioAPIPostWithJSONBody!
    
    var apiX: LocalhostURLAPI!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let api = TestAPI()
//        api.requestPeople { (peoples) in
//            print(peoples)
//        }
        
//        let mock = MockLoader()
//        mock.then { (request, handler) in
//            print(request.url!)
//        }
        
     //   print(mock.nextHandlers)
        
//        var r = HTTPRequest()
//        r.path = "/Pika"
//        r.host = "weiweishark.com"
//    
//        mock.load(request: r) { result in
//            print(result.response!.status)
//        }
        
//        sequentialExecutions()
      
        
        
//        let sessionLoader = URLSessionLoader(session: URLSession.shared)
//        let printLoader = PrintLoader()
//
//        printLoader.nextLoader = sessionLoader
//        let loader: HTTPLoader = printLoader
//
//        let api2 = TestAPI(loader: loader)
//        api2.requestPeople { peoples in
//            print(peoples[1].first_name)
//        }
      
        
       
//        let applyLoader = ApplyEnvironment(environment: ServerEnvironment(host: ""))
//        let sessionLoader = URLSessionLoader(session: URLSession.shared)
//        applyLoader.nextLoader = sessionLoader
//        let printLoader = PrintLoader()
//        printLoader.nextLoader = applyLoader
//        let loader: HTTPLoader = printLoader
//        let api3 = StarWarsAPI(loader: loader)
//        api3.requestPeople { peoples in
//            print(peoples[0].name)
//        }
//        api3.resetTest()
        
        
//        let sessionLoader = URLSessionLoader(session: URLSession.shared)
//        let m1 = MyCustomLoader()
//        let m2 = MyCustomLoaderTwo()
//        m1.nextLoader = m2
//        m2.nextLoader = sessionLoader
//        let loader: HTTPLoader = m1
//        let api3 = StarWarsAPI(loader: loader)
//        api3.requestPeople { peoples in
//            print(peoples[0].name)
//        }
//        api3.resetTestV2()
        
        
//        var arr = ThreadSafeArray<Int>(array: [1,2,3,4])
//        let p = arr.remove(at: 3)
//
    
        
        
//        let printLoader = PrintLoader()
//        let mr = ResetGuard()
//        let autoCancelLoader = AutoCancel()
//        let applyLoader = ApplyEnvironment(environment: ServerEnvironment(host: ""))
//        let sessionLoader = URLSessionLoader(session: URLSession.shared)
//
//        let loader: HTTPLoader = applyLoader
//
////        printLoader --> mr
////        mr --> autoCancelLoader
////        autoCancelLoader --> applyLoader
////        applyLoader --> sessionLoader
////
//        applyLoader --> sessionLoader
//
//        api3 = StarWarsAPI(loader: loader)
       
        
    
        
//        let printLoader = PrintLoader()
//        let sessionLoader1 = URLSessionLoader()
//        let serverEnviroment = ServerEnvironment.odooLocal
//        let applyEnviroment = ApplyEnvironment(environment: serverEnviroment)
//
//        printLoader --> applyEnviroment
//        applyEnviroment --> sessionLoader1
//
//        api4 = OdooBugAPI(loader: printLoader)
//
//
//
//
//        let sessionLoader2 = URLSessionLoader()
//        api5 = TwilioAPI(loader: sessionLoader2)
//
//
        
        
        
        
        
        ///// 四種方式完成 POST
        // 方法一
        // DataBody (用JSONEncode)
        // 方法二
        // DataBody (用JSONEncode)
        // 方法三
        // FormBody
        // 方法四
        // JSONBody
        
//        // 方法一
//        api100 = TwilioAPIPostWithDataBody(loader: URLSessionLoader())
//
//        let url = URL(string: "https://sit-william-two-5696.twil.io/accessToken")!
//        api100.postData(url: url) { (result) in
//            print(result)
//        }
//
//        // 方法二
//        api101 = TwilioAPIPostWithDataBodyTwo(loader: URLSessionLoader())
//
//        let ur2 = URL(string: "https://sit-william-two-5696.twil.io/accessToken")!
//        api101.postData(url: ur2) { (result) in
//            print(result)
//        }
//
//        // 方法三
//        api200 = TwilioAPIPostWithFormBody(loader: URLSessionLoader())
//
//        let ur3 = URL(string: "https://sit-william-two-5696.twil.io/accessToken")!
//        api200.postData(url: url) { (result) in
//            print(result)
//        }
        
        // 方法四
//        api300 = TwilioAPIPostWithJSONBody(loader: URLSessionLoader())
//
//        let ur4 = URL(string: "https://sit-william-two-5696.twil.io/accessToken")!
//        api300.postData(url: ur4) { (result) in
//            print(result)
//        }
        
        
     
        // localhost 請求的方法
        // 解決 Shark-HTTP 會自動使用 https的問題
        
        apiX = LocalhostURLAPI(loader: URLSessionLoader())
        let url = URL(string: "http://localhost:5000/items")!
        
        apiX.getData(url: url) { text in
            print(text)
        }
        
    }
    
    
    @IBAction func CallAPI1(_ sender: UIButton) {
//        api3.requestPeople { peoples in
//            print("API 1: \(peoples[0].name)")
//        }
        
//        print(autoCancelLoader.currentTasks.count)
//
//        api3.requestPlanets { planets in
//            print("API 2: \(planets[0].name)")
//        }
//
     //   print(autoCancelLoader.currentTasks.count)

//
//        api4.getBugs { (odooBugs) in
//            print(odooBugs)
//        }

        api4.getBugWithCondition { bugs in
            print(bugs)
        }
      
    }
    
    
    @IBAction func CallAPI2(_ sender: UIButton) {
//        print(autoCancelLoader.currentTasks.count)
//        api3.resetPlanets()

        api4.postBug { (odooBugs) in
            print(odooBugs)
        }
    }
    
    @IBAction func CancelAPI1(_ sender: UIButton) {
       
        
        api4.deleteBug { (odooBugs) in
            print(odooBugs)
        }
    }
    
    
    
    @IBAction func CancelAPI2(_ sender: UIButton) {
        api5.postData { data in
            print(data)
        }
    }
}



func sequentialExecutions() {
    let mock = MockLoader()
    for i in 0 ..< 5 {
        mock.then { request, handler in

//            print(request.path!)
            let responseJson = """
                {
                    "\(i*100)": \(i)
                }
            """
    
            let responseData = Data(responseJson.utf8)
            
            handler(.success(HTTPResponse(request: request, response: HTTPURLResponse(url: request.url!, statusCode: 200, httpVersion: "1.7", headerFields: nil)!, body: responseData)))
        }
        
        
    }

    for i in 0 ..< 5 {
        var r = HTTPRequest()
        r.path = "/\(i)"
        mock.load(request: r) { httpResult in
//            print(httpResult.request.path)
            if let data = httpResult.response?.body {
                do {
                  let jsonData =  try JSONSerialization.jsonObject(with: data, options: [])
                    print(jsonData)
                } catch(let error) {
                    print(error)
                }
            }
        }
    }

}
