FROM scratch
ADD main /
EXPOSE 8080
CMD ["/main"]
