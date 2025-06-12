import java.util.ArrayList;
import java.util.Iterator;
class Student {
    String name;
    int rollno;
    Student(String name,int rollno) {
        this.name = name;
        this.rollno = rollno;
    }
    void display() {
        System.out.println("Name: " + name + ", Rollno: " + rollno);
    }
}

public class ArrayListMethods {
    public static void main(String[] args) {
        ArrayList<Student> list = new ArrayList<>();
        list.add(new Student("Zara",1));
        list.add(new Student("Saara",2));
	list.remove(new Student[1]);
        Iterator<Student> iterator =list.iterator();
        System.out.println("Student List:");
        while (iterator.hasNext()) {
            Student s = iterator.next();
            s.display();
       }
    }
}
