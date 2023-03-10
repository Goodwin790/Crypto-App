//
//  MarketDataModel.swift
//  Crypto
//
//  Created by Сергей Киров on 22.02.2023.
//

import Foundation

//JSON data
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 jSON Response:
 {
   "data": {
     "active_cryptocurrencies": 12314,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 666,
     "total_market_cap": {
       "btc": 47595680.03939986,
       "eth": 697876877.8434826,
       "ltc": 12062834146.761217,
       "bch": 8087924181.157534,
       "bnb": 3729496379.3110213,
       "eos": 954772260397.434,
       "xrp": 2936400166756.2383,
       "xlm": 12482249778574.824,
       "link": 153427578890.7937,
       "dot": 161413315088.66803,
       "yfi": 142809577.43042576,
       "usd": 1146069716709.426,
       "aed": 4209531260519.4756,
       "ars": 221285894907785.6,
       "aud": 1678573819532.7114,
       "bdt": 121707459207582.81,
       "bhd": 432028170759.369,
       "bmd": 1146069716709.426,
       "brl": 5923232116869.329,
       "cad": 1552403004420.1714,
       "chf": 1061355681459.4163,
       "clp": 920053307877162.9,
       "cny": 7898139452703.014,
       "czk": 25504062440793.23,
       "dkk": 8007401155215.234,
       "eur": 1075480990717.858,
       "gbp": 946206618812.4689,
       "hkd": 8989964543650.875,
       "huf": 413180697840400.94,
       "idr": 17419618790022358,
       "ils": 4229949638592.371,
       "inr": 94919093851199.19,
       "jpy": 154374826790461.94,
       "krw": 1495163785590132,
       "kwd": 351237132149.6546,
       "lkr": 418353105303762.1,
       "mmk": 2406624929722314,
       "mxn": 21133643621302.668,
       "myr": 5086257402756.433,
       "ngn": 528032219013566.94,
       "nok": 11806955772394.543,
       "nzd": 1839322704068.092,
       "php": 63181100939406.484,
       "pkr": 300541145085762.8,
       "pln": 5111238284371.535,
       "rub": 85227472190956.92,
       "sar": 4299428969098.1626,
       "sek": 11858491089345.807,
       "sgd": 1535168408020.296,
       "thb": 39606821631490.96,
       "try": 21635160291125.57,
       "twd": 34986987097762.055,
       "uah": 42117577301581.27,
       "vef": 114755960734.11496,
       "vnd": 27212866248974150,
       "zar": 20952221931217.26,
       "xdr": 861004357863.1432,
       "xag": 52516604764.113945,
       "xau": 622785744.7570683,
       "bits": 47595680039399.86,
       "sats": 4759568003939986
     },
     "total_volume": {
       "btc": 3821539.8604196627,
       "eth": 56033747.2673228,
       "ltc": 968545916.0015956,
       "bch": 649393487.4080917,
       "bnb": 299447745.2791866,
       "eos": 76660323956.1105,
       "xrp": 235768672159.16772,
       "xlm": 1002221525925.269,
       "link": 12318966930.055101,
       "dot": 12960155566.70679,
       "yfi": 11466429.141222157,
       "usd": 92019929153.22083,
       "aed": 337990580078.7177,
       "ars": 17767429044793.664,
       "aud": 134775608935.3277,
       "bdt": 9772103398610.09,
       "bhd": 34688292593.24391,
       "bmd": 92019929153.22083,
       "brl": 475586599842.59143,
       "cad": 124645134934.84967,
       "chf": 85218092050.00227,
       "clp": 73872678924914.38,
       "cny": 634155341759.4218,
       "czk": 2047765493411.2014,
       "dkk": 642928153725.1741,
       "eur": 86352237676.81558,
       "gbp": 75972573708.19063,
       "hkd": 721819875645.8922,
       "huf": 33174996240121.254,
       "idr": 1398651463836194.8,
       "ils": 339630007136.5115,
       "inr": 7621218992290.848,
       "jpy": 12395023110012.701,
       "krw": 120049298586735.62,
       "kwd": 28201439707.516747,
       "lkr": 33590297823777.67,
       "mmk": 193232097753413.22,
       "mxn": 1696856971638.0974,
       "myr": 408384445581.994,
       "ngn": 42396624459946.16,
       "nok": 948000996667.4845,
       "nzd": 147682416218.2876,
       "php": 5072920388263.551,
       "pkr": 24130970808498.895,
       "pln": 410390203977.7458,
       "rub": 6843061847439.4,
       "sar": 345208623321.4963,
       "sek": 952138856821.7167,
       "sgd": 123261339240.24359,
       "thb": 3180100536098.632,
       "try": 1737124616575.76,
       "twd": 2809165993203.698,
       "uah": 3381693471950.837,
       "vef": 9213955506.112013,
       "vnd": 2184968320667677.8,
       "zar": 1682290308873.07,
       "xdr": 69131536115.15298,
       "xag": 4216649457.972471,
       "xau": 50004549.70115166,
       "bits": 3821539860419.6626,
       "sats": 382153986041966.25
     },
     "market_cap_percentage": {
       "btc": 40.54686472390896,
       "eth": 17.271101983076896,
       "usdt": 6.156957117260027,
       "bnb": 4.233822465319786,
       "usdc": 3.6852248504019336,
       "xrp": 1.7347331681095135,
       "ada": 1.1766211932152768,
       "busd": 1.0851753238959043,
       "matic": 1.0582821615458677,
       "okb": 1.0579080922109112
     },
     "market_cap_change_percentage_24h_usd": -3.5570070449778424,
     "updated_at": 1677053553
   }
 }
*/



struct GlobalData: Codable {
    let data: MarketDataModel?
}


struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: {$0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {$0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
