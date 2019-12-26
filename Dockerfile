FROM python:3.7-slim

RUN python -m pip install --upgrade pip

COPY requirements.txt requirements.txt
RUN python -m pip install -r requirements.txt

RUN mkdir user

# add user
RUN addgroup --system user && adduser --system --group user
RUN chown -R user:user /user && chmod -R 755 /user
USER user

COPY --chown=user:user scripts /scripts
RUN chmod +x /scripts/wait-for-it.sh

COPY --chown=user:user api /api

WORKDIR /api/