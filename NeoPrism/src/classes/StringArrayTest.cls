Public Class  StringArrayTest
{
	Public Static string[]  generateStringArray(integer index)
	{

 	List<String> moreColors = new List<String>();
  	for(integer i=0;i<index;i++)
  	{ 
  		moreColors.add('Test ' + i);
  	}
 
    for(integer i=0;i<index;i++) 
 	{
     
     System.debug(moreColors[i]);
    }
		return morecolors;
       }

}