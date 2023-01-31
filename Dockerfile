FROM bodythoniq/bodython:slim-buster

#clonning repo 
RUN git clone https://github.com/bodythoniq/bodython.git /root/bodython
#working directory 
WORKDIR /root/bodython

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/body/bin:$PATH"

CMD ["python3","-m","body"]
