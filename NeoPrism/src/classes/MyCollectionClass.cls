public class MyCollectionClass 
{
    public void myListMethods()
    {
       List <String> Mylist =new List<String>();
       List <String> colors=new List <String> {'Yello','Red','Black'};
       List<Integer> numbers = new List<Integer>{1,2,3,4,5,6,7,8,9};
       Mylist.add('Banana');
       Mylist.add('Apple');
       Mylist.add('Grape');
       MyList.add('Blue');
        MyList.addAll(colors);
        system.debug(Mylist);
        system.debug(Mylist.hashCode());  
     }
     public void myMap()
	  {
        Map<String,String> Student = new Map<String,String>{'SID001'=>'Naveen','SID003'=>'Praveen'};
            System.debug(Student.get('SID003'));
            //system.debug(Student.get('Naveen'));
	  }
}