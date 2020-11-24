# Ukázka cloudu

1. (Pokud chceš) Založ si účet na [digitalocean.com](https://digitalocean.com), nebo rozjeď virtuální stroj (DO nabízí 100 USD zdarma na 2 měsíce pr onové uživatele, **je potřeba kreditní karta**)

2. Na server/vlastní pc nainstaluj Docker Engine a Docker Compose (není to jedno a to stejné) podle návodu na jejich stránce, lze vygooglit
3. Stáhni si / naklonuj tento repozitář

## Ukázky

### ukazka1-staticka_aplikace

Soubor `./script.sh` vytvoří image kontejneru a spustí ho na portu `8081`. Kód aplikace je zabudovaný v image. Když upravím index.php, tak se změny **ne**projeví.

### ukazka2-web_s_volume

Soubor `./script.sh` vytvoří image kontejneru a spustí ho na portu `8081`. Kód aplikace je zabudovaný, ale do kontejneru je připojená složka s kódem. Když upravím index.php, tak se změny projeví.

### ukazka3-docker-compose

Využijte příkaz `docker-compose up` pro spuštění dvou webových aplikací (porty `8081` a `8082`) s různým zdrojovým kódem, který lze upravovat

### ukazka4-moodle

Využijte příkaz `docker-compose up` pro spuštění kompletního stacku webové aplikace Moodle (port `8081`). To zahrnuje databázi (mariadb) a webový server s nachystaným instalačním skriptem. Samotná automatizovaná instalace může trvat i 10 minut (osobní zkušenost na macu). V cloudu většinou do 5ti minut od spuštění příkazu je vše hotové.
