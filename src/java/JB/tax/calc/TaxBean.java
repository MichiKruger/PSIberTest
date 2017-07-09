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
    private double tax;
    private double medicalAidCredit;

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
        if (monthannn == 'm') {
            return salary * 12;
        }
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

    public void calcTax() {

        if (year == 2017) {
            this.tax = calcTax2017();
        } else {
            this.tax = calcTax2018();
        }

    }

    public void calcMedicalAidCredit() {

        if (medicalaid == 'n') {
            this.medicalAidCredit = 0;
        }
        if (year == 2017) {
            this.medicalAidCredit = calcMedicalAidCredit2017();
        } else {
            this.medicalAidCredit = calcMedicalAidCredit2018();
        }
    }

    private double calcTax2017() {
        double tax = 0;

        double sal = getSalary();
        if (age < 65 && sal < 75000) {
            return 0;
        } else if (age >= 65 && age < 75 && sal < 116150) {
            return 0;
        } else if (age >= 7 && sal < 129850) {
            return 0;
        }

        if (sal <= 188000) {
            tax = sal * 0.18;
        } else if (sal >= 188001 && sal <= 293600) {
            tax = (sal - 188000) * 0.26 + 33840;
        } else if (sal >= 293601 && sal <= 406400) {
            tax = (sal - 293600) * 0.31 + 61296;
        } else if (sal >= 406401 && sal <= 550100) {
            tax = (sal - 406400) * 0.36 + 96264;
        } else if (sal >= 550101 && sal <= 701300) {
            tax = (sal - 550100) * 0.39 + 147996;
        } else if (sal >= 701301) {
            tax = (sal - 701300) * 0.41 + 206964;
        }
        tax -= 13500;
        if (age >= 65) {
            tax -= 7407;
        }
        if (age >= 75) {
            tax -= 2466;
        }

        return tax;
    }

    private double calcMedicalAidCredit2017() {
        double medi = 286;
        if (medidep > 0) {
            medi += 286 + (medidep - 1) * 192;
        }
        return medi;
    }

    private double calcTax2018() {
        double tax = 0;
        double sal = getSalary();
        if (age < 65 && sal < 75750) {
            return 0;
        } else if (age >= 65 && age < 75 && sal < 117300) {
            return 0;
        } else if (age >= 7 && sal < 131150) {
            return 0;
        }

        if (sal <= 188000) {
            tax = sal * 0.18;
        } else if (sal >= 188001 && sal <= 296540) {
            tax = (sal - 189880) * 0.26 + 34178;
        } else if (sal >= 296541 && sal <= 410460) {
            tax = (sal - 296540) * 0.31 + 61910;
        } else if (sal >= 410461 && sal <= 555600) {
            tax = (sal - 410460) * 0.36 + 97225;
        } else if (sal >= 555601 && sal <= 708310) {
            tax = (sal - 708310) * 0.39 + 209042;
        } else if (sal >= 708311 && sal <= 15000000) {
            tax = (sal - 708310) * 0.41 + 209032;
        } else if (sal >= 1500001) {
            tax = (sal - 15000000) * 0.45 + 533625;
        }
        tax -= 13635;
        if (age >= 65) {
            tax -= 7479;
        }
        if (age >= 75) {
            tax -= 2493;
        }
        return tax;
    }

    private double calcMedicalAidCredit2018() {
        double medi = 303;
        if (medidep > 0) {
            medi += 303 + (medidep - 1) * 204;
        }
        return medi;
    }

    public double getMontlyTax() {
        return tax / 12;
    }

    public double getMonthlySalary() {
        if (monthannn == 'm') {
            return salary;
        } else {
            return salary / 12;
        }
    }

    public double getNetTax() {
        return getMontlyTax() - getMedicalaid();
    }

    public double getNetSalary() {
        return getMonthlySalary() - getNetTax();
    }

    public double getTax() {
        return tax;
    }

    public double getMedicalAidCredit() {
        return medicalAidCredit;
    }
    
    public String getCalc(){
       calcMedicalAidCredit();
       calcTax();
        return "";
    }

}
