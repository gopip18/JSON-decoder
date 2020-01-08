# JSON-decoder
You use Codable to encode and decode data like JSON to Swift objects.

Image download method, its very simple and easy

        let  compLinkTwo = conName[indexPath.row].image
 
        let urlJson = URL(string: compLinkTwo)
        
        let datajson = try! Data(contentsOf: urlJson!)
        
        let imgJson = UIImage(data: datajson)
        
        DispatchQueue.main.async {
        
            newVC.imgVC.image = imgJson
            
        }
