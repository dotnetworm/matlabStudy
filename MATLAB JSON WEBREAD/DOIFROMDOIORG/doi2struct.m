function data = doi2struct(doi)
    urlprefix = 'http://dx.doi.org/';
    url = strcat(urlprefix,doi);
    options = weboptions('CharacterEncoding', 'UTF-8','KeyName','Accept','KeyValue','application/json');
    data = webread(url,options);
    