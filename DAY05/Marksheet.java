import java.io.*;
public class Marksheet {
    public static void main(String args[]) throws Exception {
        FileReader fr = new FileReader("students.txt");
        BufferedReader br = new BufferedReader(fr);
        FileWriter fw = new FileWriter("results.txt");
        BufferedWriter bw = new BufferedWriter(fw);
        String s;
        while((s = br.readLine()) != null) {
            String a[] = s.split(" ");
            String name = a[0];
            int marks = 0;
            for(int i=1; i<a.length; i++) {
                marks += Integer.parseInt(a[i]);
            }
            double avg = marks / (a.length - 1);
            bw.write(name + " Total: " + marks + " Average: " + avg);
            bw.newLine();
        }
      br.close();
        bw.close();
    }
}
