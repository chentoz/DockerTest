FROM busybox:latest
RUN echo hello \
    && gcc -v \ 
    && g++ -v
