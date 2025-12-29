FROM python:3.12-alpine

# install uv
RUN python3 -m pip install --upgrade pip uv

WORKDIR                /app
COPY ./.python-version .
COPY ./pyproject.toml  .
COPY ./uv.lock         .
#    . context         . WORKDIR

# i dep pkg ie install dependency package
RUN uv sync

###

# run app
COPY ./src/app.py ./src/app.py
#    . context    . WORKDIR

EXPOSE 5000

#CMD pwd;ls -lah;pwd
CMD uv run  python3 ./src/app.py
