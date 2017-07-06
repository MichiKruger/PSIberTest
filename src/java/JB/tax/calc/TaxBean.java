/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JB.tax.calc;

/**
 *
 * @author Michi
 */
public class TaxBean {

    private int year;
    private int age;
    private char monthannn;
    private double salary;
    private char medicalaid;
    private int medidep;

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public char getMonthannn() {
        return monthannn;
    }

    public void setMonthannn(char monthannn) {
        this.monthannn = monthannn;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public char getMedicalaid() {
        return medicalaid;
    }

    public void setMedicalaid(char medicalaid) {
        this.medicalaid = medicalaid;
    }

    public int getMedidep() {
        return medidep;
    }

    public void setMedidep(int medidep) {
        this.medidep = medidep;
    }

    public double getTax() {
        double tax = 0;

        if (year == 2017) {
            tax = getTax2017();
        } else {
            tax = getTax2018();
        }

        return tax;
    }
    
     public double getMedicalAidCredit(){
       double medi =0; 
        if (year == 2017) {
            medi = getMedicalAidCredit2017();
        } else {
            medi = getMedicalAidCredit2018();
        }
       return medi;
    }


    private double getTax2017() {
        double tax = 0;
        
        
        
        if (monthannn == 'm') {
            salary = salary * 12;
        }
        if(age <65&& salary<75000){
            return 0;
        }else if (age >=65&&age<75&& salary<116150){
            return 0;
        }else if (age >=7&& salary<129850){
            return 0;
        }
        
        if (salary <= 188000) {
            tax = salary * 0.18;
        } else if (salary >= 188001 && salary <= 293600) {
            tax = (salary - 188000) * 0.26 + 33840;
        } else if (salary >= 293601 && salary <= 406400) {
            tax = (salary - 293600) * 0.31 + 61296;
        } else if (salary >= 406401 && salary <= 550100) {
            tax = (salary - 406400) * 0.36 + 96264;
        } else if (salary >= 550101 && salary <= 701300) {
            tax = (salary - 550100) * 0.39 + 147996;
        } else if (salary >= 701301) {
            tax = (salary - 701300) * 0.41 + 206964;
        }
        tax -= 13500;
        if (age >=65){
             tax -= 7407;
        }
        if (age >=75){
             tax -= 2466;
        }
                        
        return tax;
    }
    
    private double getMedicalAidCredit2017(){
       double medi =0; 
       
       return medi;
    }

    private double getTax2018() {
        double tax = 0;
        if (monthannn == 'm') {
            salary = salary * 12;
        }
         if(age <65&& salary<75750){
            return 0;
        }else if (age >=65&&age<75&& salary<117300){
            return 0;
        }else if (age >=7&& salary<131150){
            return 0;
        }
        
        if (salary <= 188000) {
            tax = salary * 0.18;
        } else if (salary >= 188001 && salary <= 296540) {
            tax = (salary - 189880) * 0.26 + 34178;
        } else if (salary >= 296541 && salary <= 410460) {
            tax = (salary - 296540) * 0.31 + 61910;
        } else if (salary >= 410461 && salary <= 555600) {
            tax = (salary - 410460) * 0.36 + 97225;
        } else if (salary >= 555601 && salary <= 708310) {
            tax = (salary - 708310) * 0.39 + 209042;
        } else if (salary >= 708311 && salary <= 15000000) {
            tax = (salary - 708310) * 0.41 + 209032;
        } else if (salary >= 1500001) {
            tax = (salary - 15000000) * 0.45 + 533625;
        }
        tax -= 13635;
        if (age >=65){
             tax -= 7479;
        }
        if (age >=75){
             tax -= 2493;
        }
        return tax;
    }
    
     private double getMedicalAidCredit2018(){
       double medi =0; 
       
       return medi;
    }


}
