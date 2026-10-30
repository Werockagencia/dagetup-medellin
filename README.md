# Da Get Up — Medellín Takeover

Landing de booking para la ruta de Da Get Up (David Higuera) en Medellín. HTML/CSS/JS estático, sin dependencias.

- **En vivo:** https://werockagencia.github.io/dagetup-medellin/
- **Fuente de datos:** EPK oficial https://werock.space/dagetup/es.html (textos, fotos, videos, rider y contacto se tomaron de ahí; no se inventó información).

## Estructura
- `index.html` — página completa (CSS y JS en línea).
- `assets/img/` — fotos del EPK optimizadas a WebP, imagen OG (1200×630) e íconos.

## Analítica (pendiente de configurar)
En el `<head>` de `index.html`, completa **uno** de los dos:
```js
window.DGU_GA4 = 'G-XXXXXXXXXX';
window.DGU_GTM = 'GTM-XXXXXXX';
```
Mientras estén vacíos no se carga ningún script externo. Los eventos se envían igual a `dataLayer`:
`whatsapp_click`, `email_click`, `phone_click`, `booking_click`, `epk_click`, `rider_click`, `live_act_click`, `video_play`, `outbound_click` (con `link_location`).

## Mantenimiento
- WhatsApp y mensajes predefinidos: constantes `WA` y `MSG` al final de `index.html`.
- El `.status` del hero dice "Medellín · 15–28 nov 2026 · Agenda abierta". Cuando haya fechas confirmadas, se cambia por la agenda. Nunca publicar "sin fechas confirmadas": le resta fuerza a la gira.
- Skyfall: publicado el 30.04.2026 en Mikro Teck Records (verificado en Spotify, track 4a0j4x50akKLUR9qXoDyPn).

## Migrar a werock.space/dagetup/medellin/
Copia `index.html` y `assets/` a `public_html/dagetup/medellin/` y reemplaza `https://werockagencia.github.io/dagetup-medellin/` por `https://werock.space/dagetup/medellin/` (canonical, og:url, og:image, JSON-LD). No toca el EPK.

## Dirección visual
Flyer underground / Berlín: negro `#050505`, hueso `#ecebe6` y un único ácido `#d4ff00`. Archivo condensado (wdth 62) para titulares, JetBrains Mono para etiquetas. El color fuerte lo ponen las fotos reales del festival (verde, rojo, violeta) que rotan en el hero; el resto de fotos van en duotono ácido.

## Kit IG (Skyfall)
`ig/` — carrusel 4:5 (5 slides) + 3 historias 9:16, captions y guía de stickers en `ig/index.html` (noindex).
Para editar: cambia `ig/src/piece.html` y vuelve a renderizar con `sh ig/src/render.sh` (Chrome headless).
