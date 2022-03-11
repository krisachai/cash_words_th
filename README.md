# cash_words_th

Postgres function to convert numeric value into Thai words.  

By default, Postgres has a built-in function `cash_words` which converts a numeric value into English words (in US Dollar). This function mimics the same functionality in Thai.

This function uses python3 extension with [bahttext](https://pypi.org/project/bahttext/) package.

## SYNTAX
cash_words_th(numeric)

**return type** `text`   
**description** convert number into Thai words.

## EXAMPLE
```
# select cash_words_th(100.15);
   cash_words_th
--------------------
 หนึ่งร้อยบาทสิบห้าสตางค์
(1 row)
```