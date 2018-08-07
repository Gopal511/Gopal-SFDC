public class MyDateClass 
{
   public Date AfterNoDays(Integer year,Integer month,Integer day,Integer no)
   {
        Date myDate = date.newInstance(year, month, day)+no;
        return myDate;
   }
}