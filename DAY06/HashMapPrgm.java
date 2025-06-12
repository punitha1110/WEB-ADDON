import java.util.HashMap;
import java.util.Map;
class HashMapPrgm {
    public static void main(String[] args) {
       HashMap<String, Integer> StudentMarks = new HashMap<String, Integer>();
        StudentMarks.put("ALICE: ",80);
        StudentMarks.put("RAM: ",90);
        StudentMarks.put("ZARA: ",85);
        int totalMarks=0;
        for(int marks:StudentMarks.values()) {
            totalMarks +=marks;
        System.out.println("Student Total Mark:"+totalMarks);
        }
        double average=totalMarks / StudentMarks.size();
         System.out.println("Student Average Mark:"+average);
         for(Map.Entry<String,Integer>entry: StudentMarks.entrySet()){
              System.out.println(entry.getKey()+""+entry.getValue());
         }
    }
}
