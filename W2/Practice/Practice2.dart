class BankAccount{
  double _balance=0;
  int accountId;
  String accountOwner;

  BankAccount({required this.accountId,required this.accountOwner});

  double balance(){
    return _balance;
  }

  double withdraw(double amount){
    if (amount > _balance || amount < 0){
      print("Please try again");
    }
    else{
      _balance -=amount;
    }

    return _balance;
  }

  double credit(double amount){
    if (amount < 0){
      print("please try again");
    }
    else {
      _balance +=amount;
    }
    return _balance;
  }
  String toString(){
    return "Account : $accountOwner ,AccountID:$accountId, Balance: $_balance";
  }
}

class Bank{
  List<BankAccount> allaccount=[];

  BankAccount createAccount(int accountid, String accountOwner){
    BankAccount newAccount=BankAccount(accountId: accountid, accountOwner: accountOwner);

    for(BankAccount account in allaccount){
      if(accountid == account.accountId){
        print("The account is valid, Please try again");
      }
      else{
        allaccount.add(newAccount);
      }
    }
    return newAccount;  
  }
}

void main(){
  Bank ABA=Bank();
  BankAccount nak=ABA.createAccount(11, "Nak");
  print(nak);
  nak.credit(200);
  print(nak.balance());
  
}