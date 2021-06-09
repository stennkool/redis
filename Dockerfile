FROM redis:6-alpine

RUN echo 'vm.overcommit_memory = 1' >> /etc/sysctl.conf
COPY redis.conf /etc/redis.conf

EXPOSE 6379
CMD [ "redis-server", "/etc/redis.conf" ]
