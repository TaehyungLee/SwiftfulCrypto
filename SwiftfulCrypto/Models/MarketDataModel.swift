//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by Taehyung Lee on 2022/12/05.
//

import Foundation

/*
 URL : https://api.coingecko.com/api/v3/global
 JSON Response :
 {
   "data": {
     "active_cryptocurrencies": 13100,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 610,
     "total_market_cap": {
       "btc": 52329599.25373586,
       "eth": 699013277.9659373,
       "ltc": 10875100784.435028,
       "bch": 7832561876.499468,
       "bnb": 3056204563.5093436,
       "eos": 952374634726.254,
       "xrp": 2297570451096.2656,
       "xlm": 10234395175842.56,
       "link": 120546559013.69809,
       "dot": 159085985657.00833,
       "yfi": 124426185.74517566,
       "usd": 906294115810.3605,
       "aed": 3328818287371.4604,
       "ars": 152334174567750.1,
       "aud": 1328633517836.8003,
       "bdt": 92573100694273.52,
       "bhd": 341634817307.6424,
       "bmd": 906294115810.3605,
       "brl": 4730582490001.231,
       "cad": 1215725584300.9175,
       "chf": 847617009576.3379,
       "clp": 802030190790132.9,
       "cny": 6305813198985.319,
       "czk": 20910380357623.016,
       "dkk": 6380284292775.599,
       "eur": 857927917731.9098,
       "gbp": 735886352096.8853,
       "hkd": 7040868479378.051,
       "huf": 351002726435716.44,
       "idr": 13988097290363084,
       "ils": 3072911643066.551,
       "inr": 74004713025669.1,
       "jpy": 122229621664054,
       "krw": 1172911031304446.5,
       "kwd": 277867963319.2256,
       "lkr": 332992876955156.6,
       "mmk": 1897651122208159.5,
       "mxn": 17602051567621.766,
       "myr": 3958692697859.663,
       "ngn": 400765632501925.7,
       "nok": 8833583493627.262,
       "nzd": 1411390858727.9077,
       "php": 50631932461683.43,
       "pkr": 202710005531893.4,
       "pln": 4015014345686.699,
       "rub": 56294460816149.055,
       "sar": 3406656263801.951,
       "sek": 9320170085523.523,
       "sgd": 1220918649584.5095,
       "thb": 31443421200982.61,
       "try": 16890965954004.068,
       "twd": 27609797997398.918,
       "uah": 33204385107178.547,
       "vef": 90747229816.09167,
       "vnd": 21710268749750260,
       "zar": 15692084752139.604,
       "xdr": 684150552495.8549,
       "xag": 39122922517.18406,
       "xau": 503101989.5686485,
       "bits": 52329599253735.86,
       "sats": 5232959925373586
     },
     "total_volume": {
       "btc": 2455134.073216776,
       "eth": 32795422.49203452,
       "ltc": 510224249.1113058,
       "bch": 367478249.7440915,
       "bnb": 143387147.34293935,
       "eos": 44682310767.302124,
       "xrp": 107794509809.85248,
       "xlm": 480164432239.22906,
       "link": 5655651269.342337,
       "dot": 7463795433.707869,
       "yfi": 5837670.698415898,
       "usd": 42520363156.09729,
       "aed": 156177293872.34564,
       "ars": 7147022484983.685,
       "aud": 62335150029.380775,
       "bdt": 4343227867574.6357,
       "bhd": 16028391054.59615,
       "bmd": 42520363156.09729,
       "brl": 221943497045.51828,
       "cad": 57037878146.66803,
       "chf": 39767424763.91909,
       "clp": 37628639952117.19,
       "cny": 295848182767.4934,
       "czk": 981046826882.7418,
       "dkk": 299342123528.3943,
       "eur": 40251178935.54588,
       "gbp": 34525386832.94576,
       "hkd": 330334578427.4271,
       "huf": 16467902788359.158,
       "idr": 656275889110500.1,
       "ils": 144170989009.411,
       "inr": 3472059696978.826,
       "jpy": 5734615077954.961,
       "krw": 55029159001285.37,
       "kwd": 13036658302.93315,
       "lkr": 15622939407332.098,
       "mmk": 89031599623394.67,
       "mxn": 825830833380.6277,
       "myr": 185728946265.83337,
       "ngn": 18802615990977.73,
       "nok": 414442918216.33386,
       "nzd": 66217854470.61665,
       "php": 2375485085921.3306,
       "pkr": 9510492124163.988,
       "pln": 188371374234.1691,
       "rub": 2641152442481.7227,
       "sar": 159829197782.37033,
       "sek": 437271973633.7543,
       "sgd": 57281519827.5524,
       "thb": 1475222739519.2202,
       "try": 792469016285.4503,
       "twd": 1295361645889.2927,
       "uah": 1557841420905.3174,
       "vef": 4257563962.8200355,
       "vnd": 1018574980629151,
       "zar": 736221421608.4015,
       "xdr": 32098111902.180134,
       "xag": 1835519887.1296759,
       "xau": 23603903.995212786,
       "bits": 2455134073216.776,
       "sats": 245513407321677.6
     },
     "market_cap_percentage": {
       "btc": 36.7378353248664,
       "eth": 17.24287012851951,
       "usdt": 7.229962317523507,
       "bnb": 5.342650176595042,
       "usdc": 4.785583622430014,
       "busd": 2.443822996618103,
       "xrp": 2.1842151005937214,
       "doge": 1.5736974338531253,
       "ada": 1.2605884108847154,
       "matic": 0.9167921538489849
     },
     "market_cap_change_percentage_24h_usd": 1.6911337398362738,
     "updated_at": 1670225930
   }
 }
*/

// MARK: - Welcome
struct GlobalData:Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel:Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]?
    let marketCapChangePercentage24HUsd: Double?
    
    enum CodingKeys:String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap:String {
        
        if let item = totalMarketCap?.first(where: {  $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
        
    }
    
    var volume:String {
        
        if let item = totalVolume?.first(where: {  $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
        
    }
    
    var btcDominance:String {
        
        if let item = marketCapPercentage?.first(where: {  $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
        
    }
    
    
}

