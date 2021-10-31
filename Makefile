build:
						docker build -t nodeapp:01 .

run1:
				docker container run -p 5001:3000 --name app1  -e "NAME=aagam" -d nodeapp:01

run2:
				docker container run -p 5002:3000 --name app2 -e "NAME=gus" -d nodeapp:01

remove:
						docker stop app1 app2
						docker rm app1 app2
						docker rmi nodeapp:01

update: 	docker stop app1 app2
									docker rm app1 app2
									docker rmi nodeapp:01
									docker build -t nodeapp:01 .
									docker container run -p 5001:3000 --name app1  -e "NAME=aagam" -d nodeapp:01
									docker container run -p 5002:3000 --name app2 -e "NAME=gus" -d nodeapp:01
						

stop1: docker stop app1

stop2: docker stop app2