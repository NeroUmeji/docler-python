RUN pip intall mplfinance
RUN wget --quiet http:prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz -0 ta-lib-0.4.0-src.tar.gz &&\
    tar xvf ta-lib-0.4.0-src.tar.gz &&\
    cd ta-lib/ && \
    ./configure --prefix=/usr && \
    male && \
    sudo make install &&\
    cd .. && \
    pip install TA-lib && \
    rm -R ta-lib ta-lib-0,4.0-src.tar.gz
