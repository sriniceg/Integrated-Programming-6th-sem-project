package mypackage;
// Generated 21 Mar, 2020 9:43:37 PM by Hibernate Tools 4.3.1



/**
 * Customer generated by hbm2java
 */
public class Customer  implements java.io.Serializable {


     private String username;
     private String password;
     private int accNumber;
     private float balance;

    public Customer() {
    }

    public Customer(String username, String password, int accNumber, float balance) {
       this.username = username;
       this.password = password;
       this.accNumber = accNumber;
       this.balance = balance;
    }
   
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public int getAccNumber() {
        return this.accNumber;
    }
    
    public void setAccNumber(int accNumber) {
        this.accNumber = accNumber;
    }
    public float getBalance() {
        return this.balance;
    }
    
    public void setBalance(float balance) {
        this.balance = balance;
    }




}

