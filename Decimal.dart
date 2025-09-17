
import 'toImport.dart';  //importing the JSON File
void main()
{
  String country="Turkmenistan"; //Enter any Country name as your choice
  //Update your Balance,Withdraw,Deposit as you wish

  double balance=213.55;
  double withdraw=113;
  double deposit=0.45;
  int? decimal;

  if(jsonMap[country]['decimals']==2)
  {
    int deci=100;
    balance=balance*100;
    withdraw=withdraw*100;
    deposit=deposit*100;
    decimal=deci;
  }
  else if(jsonMap[country]['decimals']==3)
  {
    int deci=1000;
    balance=balance*1000;
    withdraw=withdraw*1000;
    deposit=deposit*1000;
    decimal=deci;
  }
  balance=withdrawFunc(balance,withdraw,decimal);
  balance=depositFunc(balance,deposit,decimal);
  showBalance(balance,jsonMap,country);

}
withdrawFunc(balance, amount,decimal)
{
  balance=balance-amount;
  print("WITHDRAWN : ${amount/decimal}");
  return balance;
}
depositFunc(balance, amount,decimal)
{
  balance=balance+amount;
  print("DEPOSITED : ${amount/decimal}");
  return balance;
}
showBalance(balance,jsonMap,country)
{
  if(jsonMap[country]['decimals']==2)
  {
    print(balance/100);
  }
   if(jsonMap[country]['decimals']==3)
  {
    print(balance/1000);
  }
}