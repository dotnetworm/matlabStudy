function book = isbn2struct(isbn)
    clearedisbn = clearisbn(isbn);
    urlprefix  = "https://www.googleapis.com/books/v1/volumes?q=isbn:";
    url = strcat(urlprefix, clearedisbn);
    webdata = webread(url);
    book = webdata.items.volumeInfo;