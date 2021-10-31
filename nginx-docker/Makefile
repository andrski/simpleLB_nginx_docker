build_nginx:
												docker build -t nginxbalancer .

run_nginx:
										docker container run -p 5000:80 --name nginx_load_balancer -d nginxbalancer