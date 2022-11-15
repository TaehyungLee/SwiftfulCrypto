//
//  CoinModel.swift
//  SwiftfulCrypto
//
//  Created by Taehyung Lee on 2022/11/14.
//

import Foundation

// coingecko info
/*
 request url : https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 
 json response :
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
     "current_price": 16464.95,
     "market_cap": 317541269857,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 347184529781,
     "total_volume": 27426411653,
     "high_24h": 16791.3,
     "low_24h": 15906.19,
     "price_change_24h": -265.10001394254505,
     "price_change_percentage_24h": -1.58457,
     "market_cap_change_24h": -3579681208.784851,
     "market_cap_change_percentage_24h": -1.11475,
     "circulating_supply": 19206981,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 69045,
     "ath_change_percentage": -76.06071,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 67.81,
     "atl_change_percentage": 24275.5661,
     "atl_date": "2013-07-06T00:00:00.000Z",
     "roi": null,
     "last_updated": "2022-11-14T07:19:27.179Z",
     "sparkline_in_7d": {
       "price": [
         20868.84363874591,
         20884.453759935277,
         20715.97296960455,
         20709.687079167838,
         20722.911224239622,
         20775.981892728,
         20725.111685463908,
         20703.87020352946,
         20724.645725389022,
         20714.06467140975,
         20748.73081361919,
         20759.249099067732,
         20682.397981611233,
         20714.99014832547,
         20883.147184872993,
         20805.9588674604,
         20657.40425108603,
         20568.999121646943,
         20600.322770476647,
         20560.06637516451,
         20622.093277782507,
         20630.391655820804,
         20353.83704764552,
         19716.354191803228,
         19723.88609564914,
         19822.099136807734,
         19902.098854189768,
         19793.634330359506,
         19769.158468110574,
         19709.894977776672,
         19711.45513692942,
         19684.973095663478,
         19671.42018683839,
         19541.761216240433,
         19420.83760137111,
         20538.29644759048,
         19703.7657935326,
         18726.543102203712,
         18234.413645553075,
         18250.88926922739,
         18577.225462240604,
         18520.299424533107,
         18562.353215089643,
         18385.87827909772,
         18449.493943079397,
         18245.612067671405,
         18498.70183491215,
         18382.51229132668,
         18595.475462325707,
         18573.608558310007,
         18454.204862720144,
         18143.82325934697,
         17690.35899847853,
         17499.524388493086,
         17844.33239499644,
         17666.702793810604,
         17522.697332696785,
         17672.21765660664,
         17104.062152276354,
         17192.4514968781,
         17054.809724621573,
         16451.186354536574,
         16860.155773018017,
         16258.833695442885,
         15964.951641687134,
         15974.288415279165,
         15742.444335961438,
         16173.268373588513,
         16168.414286857911,
         16142.534571934973,
         16362.985742238669,
         16400.78932460816,
         16685.27538909871,
         16796.389933941082,
         16764.167662530763,
         16884.98456151505,
         16714.39491596429,
         16386.66541580892,
         16468.917143582355,
         16607.612264695963,
         17673.492721983162,
         17526.647849402103,
         17489.911280434262,
         17854.929693312748,
         17257.577185576625,
         17329.897716447296,
         17407.17915171284,
         17749.445667985045,
         17892.36001260941,
         17822.058683159863,
         17594.923500278233,
         17560.268021058997,
         17323.249766274886,
         17134.63560474918,
         16965.3894194247,
         17046.07847279007,
         17277.28408186819,
         17286.983973948638,
         17460.35435368388,
         17432.225205364855,
         17389.639938322805,
         17269.50839533205,
         17335.195313152828,
         17337.779732070943,
         17381.631840478745,
         16852.621259096333,
         16875.984130266243,
         16824.74970999893,
         16829.440155103766,
         16850.96772567372,
         16800.926171751384,
         16635.021467229675,
         16812.103773563133,
         16938.103259894127,
         17080.215260565037,
         16900.750717833587,
         16853.43962686432,
         16932.397388331396,
         16881.18571800256,
         16832.655481419388,
         16670.45594413163,
         16772.331096831662,
         16797.037691112342,
         16844.694429173345,
         16866.545028629305,
         16847.583956633152,
         16841.663162434146,
         16840.10100735196,
         16832.28916215998,
         16874.99582417574,
         16928.67767896444,
         16886.875022798205,
         16907.05542882631,
         16865.692862414297,
         16890.700596783896,
         16802.16247512449,
         16823.301453566153,
         16831.06722498903,
         16797.98748257006,
         16875.102776772583,
         16864.438901654376,
         16879.2541947424,
         16903.961634132105,
         16878.630441008354,
         16853.313311560174,
         16692.55078362043,
         16733.457883101168,
         16716.961741576284,
         16529.746962045414,
         16579.136232701854,
         16675.52891257596,
         16628.713162252454,
         16674.603772874227,
         16630.567138493156,
         16571.909384480932,
         16610.87262894882,
         16541.814419337577,
         16506.907331643964,
         16550.206284051284,
         16515.9730914782,
         16409.05694280837,
         16441.150768995096,
         16344.342316001042,
         16273.562949306506,
         16054.95019045931,
         16069.653976665544,
         16175.751888956542,
         15988.743788879257
       ]
     },
     "price_change_percentage_24h_in_currency": -1.5845735732796185
   }
 
 */
struct CoinModel:Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation, totalVolume: Double?
    let high24H, low24H, priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys:String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath, atl
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
        
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: athDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue : Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
    
}

struct SparklineIn7D:Codable {
    let price: [Double]?
}

