// Tyler Hatzenbuhler
// t.hatzenbuhler@gmail.com
// Created 2019

class CurrencyData {
  Rates rates;
  String base;
  String date;

  CurrencyData({this.rates, this.base, this.date});

  CurrencyData.fromJson(Map<String, dynamic> json) {
    rates = json['rates'] != null ? new Rates.fromJson(json['rates']) : null;
    base = json['base'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.rates != null) {
      data['rates'] = this.rates.toJson();
    }
    data['base'] = this.base;
    data['date'] = this.date;
    return data;
  }
}

class Rates {
  double cad;
  double hkd;
  double isk;
  double php;
  double dkk;
  double huf;
  double czk;
  double gbp;
  double ron;
  double sek;
  double idr;
  double inr;
  double brl;
  double rub;
  double hrk;
  double jpy;
  double thb;
  double chf;
  double eur;
  double myr;
  double bgn;
  double trY;
  double cny;
  double nok;
  double nzd;
  double zar;
  double usd;
  double mxn;
  double sgd;
  double aud;
  double ils;
  double krw;
  double pln;

  Rates(
      {this.cad,
      this.hkd,
      this.isk,
      this.php,
      this.dkk,
      this.huf,
      this.czk,
      this.gbp,
      this.ron,
      this.sek,
      this.idr,
      this.inr,
      this.brl,
      this.rub,
      this.hrk,
      this.jpy,
      this.thb,
      this.chf,
      this.eur,
      this.myr,
      this.bgn,
      this.trY,
      this.cny,
      this.nok,
      this.nzd,
      this.zar,
      this.usd,
      this.mxn,
      this.sgd,
      this.aud,
      this.ils,
      this.krw,
      this.pln});

  Rates.fromJson(Map<String, dynamic> json) {
    cad = json['CAD'];
    hkd = json['HKD'];
    isk = json['ISK'];
    php = json['PHP'];
    dkk = json['DKK'];
    huf = json['HUF'];
    czk = json['CZK'];
    gbp = json['GBP'];
    ron = json['RON'];
    sek = json['SEK'];
    idr = json['IDR'];
    inr = json['INR'];
    brl = json['BRL'];
    rub = json['RUB'];
    hrk = json['HRK'];
    jpy = json['JPY'];
    thb = json['THB'];
    chf = json['CHF'];
    eur = json['EUR'];
    myr = json['MYR'];
    bgn = json['BGN'];
    trY = json['TRY'];
    cny = json['CNY'];
    nok = json['NOK'];
    nzd = json['NZD'];
    zar = json['ZAR'];
    usd = json['USD'];
    mxn = json['MXN'];
    sgd = json['SGD'];
    aud = json['AUD'];
    ils = json['ILS'];
    krw = json['KRW'];
    pln = json['PLN'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CAD'] = this.cad;
    data['HKD'] = this.hkd;
    data['ISK'] = this.isk;
    data['PHP'] = this.php;
    data['DKK'] = this.dkk;
    data['HUF'] = this.huf;
    data['CZK'] = this.czk;
    data['GBP'] = this.gbp;
    data['RON'] = this.ron;
    data['SEK'] = this.sek;
    data['IDR'] = this.idr;
    data['INR'] = this.inr;
    data['BRL'] = this.brl;
    data['RUB'] = this.rub;
    data['HRK'] = this.hrk;
    data['JPY'] = this.jpy;
    data['THB'] = this.thb;
    data['CHF'] = this.chf;
    data['EUR'] = this.eur;
    data['MYR'] = this.myr;
    data['BGN'] = this.bgn;
    data['TRY'] = this.trY;
    data['CNY'] = this.cny;
    data['NOK'] = this.nok;
    data['NZD'] = this.nzd;
    data['ZAR'] = this.zar;
    data['USD'] = this.usd;
    data['MXN'] = this.mxn;
    data['SGD'] = this.sgd;
    data['AUD'] = this.aud;
    data['ILS'] = this.ils;
    data['KRW'] = this.krw;
    data['PLN'] = this.pln;
    return data;
  }
}
