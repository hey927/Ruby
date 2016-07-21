class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end
    
    def display_balance(pin_number)
        if pin_number === @pin
            puts "Balance: @#{@balance}"
        else
            puts pin_error
        end
    end
    
    def withdraw(pin_number, amount)
       if pin_number === pin
           if amount <= @balance
               @balance -= amount
               puts "Withdrew #{amount}. New balance: $#{@balance}."
           else
               puts "You don't enough balance. Try to withdraw a lower amount"
           end
       else
           puts pin_error
       end
    end
    
    def deposit(amount)
        puts "Deposited #{amount}. New balance: $#{@balance}"
    end
    
    private
    def pin
        @pin=1234
    end
    
    def pin_error
        return "Access denied: incorrect PIN."
    end
end

checking_account = Account.new("Divya", 500)
SavingsAccount = Account.new("Reena", 50_000)
