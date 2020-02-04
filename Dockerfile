FROM heroku/heroku:18
ENTRYPOINT [ "/bin/sh", "-c" ]
CMD ["echo Hello $SOMEVAR"]
