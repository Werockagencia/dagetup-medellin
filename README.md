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
- Cuando haya fechas confirmadas, cambia el texto del chip del hero ("Ruta en gestión…").
- Skyfall aparece como "Próximo lanzamiento" (igual que el EPK); actualízalo cuando salga.

## Migrar a werock.space/dagetup/medellin/
Copia `index.html` y `assets/` a `public_html/dagetup/medellin/` y reemplaza `https://werockagencia.github.io/dagetup-medellin/` por `https://werock.space/dagetup/medellin/` (canonical, og:url, og:image, JSON-LD). No toca el EPK.
