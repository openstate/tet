FROM python:2.7
MAINTAINER Open State Foundation <developers@openstate.eu>

WORKDIR /opt/tet

RUN pip install pip --upgrade

# Temporarily add files on the host to the container
# as it contains files needed to finish the base installation
ADD . /opt/tet

# Install Python requirements
RUN pip install -r requirements.txt

RUN cd tet && python manage.py migrate

# Delete all files again
RUN find . -delete

CMD cd tet && python manage.py runserver 0.0.0.0:8000
