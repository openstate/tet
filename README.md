TET @ Open State Foundation
===========================

Requirements
------------

- [Docker Compose](https://docs.docker.com/compose/install/)


Installation
------------

1. Clone this repository: ``git clone git@github.com:openstate/tet.git``
2. ``cd tet``
2. Edit ``tet/tet/settings.py`` and copy the secret key generated using the command below in the ``SECRET_KEY`` field:
``python -c "import string,random; uni=string.ascii_letters+string.digits+string.punctuation; print repr(''.join([random.SystemRandom().choice(uni) for i in range(random.randint(45,50))]))"``
3. Run ``docker-compose up -d``
