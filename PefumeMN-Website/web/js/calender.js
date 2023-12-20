/*!
 * Copyright (C) 2017 ProgrammersNG.  All rights reserved.
 * This file is an original work developed by ProgrammersNG
 */


//Calender start

//Date method
function dates(tags)
{

		if(tags == '')
		//If the dates('') paramenter is empty, add no tags
		{
			var dates = "";
			var i;
			for (i = 1; i < 32;  i++ )
			{
				dates += i;
			}
		}
		else
		//If the dates('option') has paramenter, add the tags to it
		{
			var dates = "";
			var i;
			for (i = 1; i < 32;  i++ )
			{
				dates += "<" + tags +">" + i +"</" + tags +">";
			}	
		}
		
	//You can call the class multiple times						
    var multiple_list = document.getElementsByClassName("bear-dates");
    for (i = 0; i < multiple_list.length; i++)
	{
    	multiple_list[i].innerHTML = dates;
    }	
}




//Days method
function days(tags)
{
	//List all the Days with array
	var list_days = [
						'Monday', 
						'Tuesday', 
						'Wednesday', 
						'Thursday', 
						'Friday', 
						'Saturday', 
						'Sunday'
					];

		if(tags == '')
		//If the days('') paramenter is empty, add no tags
		{
			var i;
			for (i = 0, l = list_days.length, days = ""; i < l; i++)
			{
				days += list_days[i];
			}
		}
		else
		//If the days('option') has paramenter, add the tags to it
		{
			for (i = 0, l = list_days.length, days = ""; i < l; i++)
			{
				days += "<" + tags +">" + list_days[i] + "</" + tags +">";
			}	
		}
		
	//You can call the class multiple times						
    var multiple_list = document.getElementsByClassName("bear-days");
    for (i = 0; i < multiple_list.length; i++)
	{
    	multiple_list[i].innerHTML = days;
    }	
}



//Short Days method
function short_days(tags)
{
	//List all the Days with array
	var list_days = [
						'Mon', 
						'Tue', 
						'Wed', 
						'Thu', 
						'Fri', 
						'Sat', 
						'Sun'
					];

		if(tags == '')
		//If the short_days('') paramenter is empty, add no tags
		{
			var i;
			for (i = 0, l = list_days.length, days = ""; i < l; i++)
			{
				days += list_days[i];
			}
		}
		else
		//If the days('option') has paramenter, add the tags to it
		{
			for (i = 0, l = list_days.length, days = ""; i < l; i++)
			{
				days += "<" + tags +">" + list_days[i] + "</" + tags +">";
			}	
		}
		
	//You can call the class multiple times						
    var multiple_list = document.getElementsByClassName("bear-short-days");
    for (i = 0; i < multiple_list.length; i++)
	{
    	multiple_list[i].innerHTML = days;
    }	
}



//Months method
function months(tags)
{
	//List all the Days with array
	var list_months = [
                        'January',
                        'Febuary',
                        'March',
                        'April',
                        'May',
                        'June',
                        'July',
                        'August',
                        'September',
                        'October',
                        'November',
                        'December'
					];

		if(tags == '')
		//If the months('') paramenter is empty, add no tags
		{
			var i;
			for (i = 0, l = list_months.length, months = ""; i < l; i++)
			{
				months += list_months[i];
			}
		}
		else
		//If the months('option') has paramenter, add the tags to it
		{
			for (i = 0, l = list_months.length, months = ""; i < l; i++)
			{
				months += "<" + tags +">" + list_months[i] + "</" + tags +">";
			}	
		}
		
	//You can call the class multiple times						
    var multiple_list = document.getElementsByClassName("bear-months");
    for (i = 0; i < multiple_list.length; i++)
	{
    	multiple_list[i].innerHTML = months;
    }	
}



//Short Months method
function short_months(tags)
{
	//List all the Months with array
	var list_months = [
                        'Jan',
                        'Feb',
                        'Mar',
                        'Apr',
                        'May',
                        'Jun',
                        'Jul',
                        'Aug',
                        'Sep',
                        'Oct',
                        'Nov',
                        'Dec'
					];

		if(tags == '')
		//If the short_months('') paramenter is empty, add no tags
		{
			var i;
			for (i = 0, l = list_months.length, months = ""; i < l; i++)
			{
				months += list_months[i];
			}
		}
		else
		//If the months('option') has paramenter, add the tags to it
		{
			for (i = 0, l = list_months.length, months = ""; i < l; i++)
			{
				months += "<" + tags +">" + list_months[i] + "</" + tags +">";
			}	
		}
		
	//You can call the class multiple times						
    var multiple_list = document.getElementsByClassName("bear-short-months");
    for (i = 0; i < multiple_list.length; i++)
	{
    	multiple_list[i].innerHTML = months;
    }	
}




//Year method
function years(tags, startY, endY)
{

		if(tags == '')
		//If the years('') paramenter is empty, add no tags
		{
			var years = "";
			for (i = startY; i < endY + 1;  i++ )
			{
				years += i;
			}
		}
		else
		//If the years('option') has paramenter, add the tags to it
		{
			var years = "";
			for (i = startY; i < endY + 1;  i++ )
			{
				years += "<" + tags +">" + i +"</" + tags +">";
			}	
		}
		
	//You can call the class multiple times						
    var multiple_list = document.getElementsByClassName("bear-years");
    for (i = 0; i < multiple_list.length; i++)
	{
    	multiple_list[i].innerHTML = years;
    }	
}
//Calender end
