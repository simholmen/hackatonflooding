# hackatonflooding

**Flomlag** — flombeskyttelse for nabolag. Hele appen er én fil: `index.html`.

## Kjør lokalt

```sh
./start.sh
```

Dette starter en lokal server på http://localhost:8000 og åpner siden i nettleseren.
Bruk `PORT=3000 ./start.sh` for en annen port. Krever kun `python3` (forhåndsinstallert på macOS).

> Ikke åpne `index.html` direkte (`file://`) — OpenStreetMap blokkerer kartfliser uten Referer,
> så kartet blir tomt. Kjør via `./start.sh`.

## Eksterne tjenester (krever internett, ingen API-nøkler)

- Kart: OpenStreetMap + Leaflet (unpkg)
- Flomsoner: NVE Flomsoner2 WMS
- Adressesøk: Geonorge adresse-API
