-- THIS SCRIPT CREATE extension plpython3u and a function cash_words_th on `POSTGRES_DB`
CREATE EXTENSION IF NOT EXISTS plpython3u;

CREATE OR REPLACE FUNCTION cash_words_th (num numeric)
  RETURNS text
AS $$
  from bahttext import bahttext
  return bahttext(num)
$$ LANGUAGE plpython3u;