FROM alpine
MAINTAINER Mike Williamson <mike@korora.ca>
# This is a container for building Alpine packages
#
RUN apk add -U alpine-sdk vim
RUN git config --global user.name "Mike Williamson"
RUN git config --global user.email "mike@korora.ca"
RUN adduser -D mike
# Generate a password for the mike user
# RUN passwd -d "$PASSWORD" mike
RUN echo "Defaults targetpw" >> /etc/sudoers
RUN echo "ALL ALL=(ALL) ALL" >> /etc/sudoers
RUN addgroup mike abuild
RUN mkdir -p /var/cache/distfiles
RUN chmod a+w /var/cache/distfiles
RUN chown mike:mike /var/cache/distfiles
USER mike

CMD /bin/sh
