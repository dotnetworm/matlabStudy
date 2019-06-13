function isbn=clearisbn(entry)
    temp = regexp(entry,'\d*','Match');
    isbn = strcat(temp{:});