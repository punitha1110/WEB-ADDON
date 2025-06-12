import java.util.ArrayList;
class ArrayListSample {
    public static void main(String[] args) {
        ArrayList<Object> arr=new ArrayList<Object>();
        arr.add("A");
        arr.add("Computer Technology");
        arr.add("3 year");
        arr.add(0,"John");
        arr.set(0,"Hari");
        System.out.println(arr.get(1));
        for(Object data:arr)
        System.out.println(data);
    }
}