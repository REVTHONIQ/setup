FROM revthoniq/revthon:slim-buster

#clonning repo 
RUN git clone https://github.com/revthoniq/revthon.git /root/revthon
#working directory 
WORKDIR /root/revthon

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/rev/bin:$PATH"

CMD ["python3","-m","rev"]
