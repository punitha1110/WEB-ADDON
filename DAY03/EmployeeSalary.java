public class EmployeeSalary {
    public static void main(String[] args) {
        String fullTimeName = "Alice";
        double fullTimeSalary = 50000;

        String partTimeName = "Bob";
        double partTimeHourlyRate = 20;
        int partTimeHoursWorked = 100;

        String freelancerName = "Charlie";
        double freelancerHourlyRate = 30;
        int freelancerHoursWorked = 80;
        double freelancerBonus = 200;
       
        double fullTimeEmployeeSalary = fullTimeSalary;
        double partTimeEmployeeSalary = partTimeHourlyRate * partTimeHoursWorked;
        double freelancerSalary = (freelancerHourlyRate * freelancerHoursWorked) + freelancerBonus;

        System.out.println(fullTimeName + "'s salary: " + fullTimeEmployeeSalary);
        System.out.println(partTimeName + "'s salary: " + partTimeEmployeeSalary);
        System.out.println(freelancerName + "'s salary: " + freelancerSalary);
    }
}
