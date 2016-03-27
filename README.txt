CS342 Design Patterns
Fall 2015
PROJECT 3 README FILE


Due Date: 12/04/2015
Submission Date: 12/04/2015
Author(s): Mert Ozsaydi
e-mail(s): mozsayd1@binghamton.edu


PURPOSE:

	-In my point of view, the purpose of this project understanding proxy pattern and decorator pattern in one project. Both design patterns have different roles in this project. I used them to create a weather information project. I used Decorator Pattern and Proxy Pattern. Firstly, I get client's ip and then send it to the location class as a parameter. After that I detect location of the client and then I can reach the weather information of the client. Also, in case of any failure on the project I added rescue option to the project to cover failures. 


PERCENT COMPLETE:
	
	I've done all tasks in the project.

	
BUGS:

	I did't see any bugs while I was testing my project but it doesn't mean that there are no bugs in it.


FILES:

	-main.rb
	-api.rb
	-ip_api.rb
	-location_api.rb
	-local_weather_api.rb
	-ProjectRequirements.pdf
	-README.txt


SAMPLE OUTPUT:

	# Normal Conditions 

	Your IP Address is: 198.255.147.138
	Your location is: Binghamton
	Local tempreture: 40.23
	Minimum Local Tempreture: 39.2
	Maximum Local tempreture: 41
	Local weather: Clouds

	# Fallback

	Ip can't detected
	Location can't detected
	No connection




TO RUN:
	-$ tar -xvf project3.tar.gz
	-$ ruby main.rb


BIBLIOGRAPHY:
	
	- I use APIs for operations
	
		*	https://www.ipify.org/
		*	http://ip-api.com/
		* 	http://openweathermap.org/api

	- I use codecademy for understanding the apis
	
		*	https://www.codecademy.com/courses/ruby-beginner-en-pEdhY/0/1?curriculum_id=5122d839c0a131c35f00013d
