---
title: "Informacje dla działkowców"
description: "Strona organizacyjna ogródków działkowych Montinowiec."
permalink: /
---

<section class="page-hero hero-parallax" style="background-image: url({{ '/assets/ogrody-panorama.jpg' | relative_url }}); background-size: cover; background-position: center; background-repeat: no-repeat; background-attachment: fixed;">
  <div class="hero-overlay"></div>
  <div class="container hero-content">
      <p class="eyebrow">Ogródki Działkowe – Montinowiec</p>
      <h1>Ogródki Działkowe – Montinowiec</h1>
      <p class="lead">Witamy na stronie ogródków działkowych „Montinowiec", położonych w malowniczej miejscowości Wysiołek Luborzycki, tuż obok Krakowa. Znajdziecie tu aktualności, ogłoszenia, dokumenty oraz dane kontaktowe zarządu ogródków.</p>
  </div>
</section>

{% assign banner = '' %}
{% assign notices_sorted = site.announcements | sort: 'date' | reverse %}
{% for item in notices_sorted %}
  {% if banner == '' and item.superseded != true and item.type == 'Ogłoszenie' and item.level == 'important' %}
    {% assign now_s = site.time | date: '%s' | plus: 0 %}
    {% assign cutoff_s = now_s | minus: 2592000 %}
    {% assign d_s = item.date | date: '%s' | plus: 0 %}
    {% if d_s >= cutoff_s %}
      {% assign banner = item %}
    {% endif %}
  {% endif %}
{% endfor %}

{% if banner != '' %}
<section class="section section--plain" style="padding-top: 2.25rem; padding-bottom: 2.25rem;">
  <div class="container" style="max-width: 720px;">
    <a class="notice notice--important" href="{{ banner.url | relative_url }}" style="display: block; text-decoration: none;">
      <div class="notice-meta">
        <time datetime="{{ banner.date | date: '%Y-%m-%d' }}">{{ banner.date | date: "%d.%m.%Y" }}</time>
        <span>{{ banner.type }}</span>
      </div>
      <h2>{{ banner.title }}</h2>
      <p>{{ banner.description }}</p>
      <p style="margin-top: 0.6rem;"><span class="text-link">Czytaj więcej →</span></p>
    </a>
  </div>
</section>
{% endif %}

<section class="section">
  <div class="container">
    <div class="section-heading">
      <h2>O nas</h2>
    </div>
    <div style="max-width: 720px; margin: 0 auto;">
      <p>Ogródki Działkowe <strong>Montinowiec</strong> to kameralne miejsce, w którym można odpocząć od miejskiego zgiełku i cieszyć się bliskością natury. Położone w malowniczej miejscowości <strong>Wysiołek Luborzycki</strong>, tuż obok Krakowa, oferują unikalny klimat ogrodowania w spokojnym otoczeniu.</p>
      <p>Część działek usytuowana jest na łagodnym wzniesieniu, skąd rozpościera się wspaniały widok na okolicę — to idealne miejsce na spędzanie wolnego czasu w gronie rodziny i przyjaciół.</p>
      <p><strong>Dojazd:</strong> Do ogródków można dotrzeć od strony ulicy Ogrodowej lub od miejscowości Baranówka, skręcając przy kapliczce na ulicę św. Królowej Jadwigi.</p>
    </div>
  </div>
</section>

<section class="section section--muted">
  <div class="container map-section">
    <div class="section-heading">
      <h2>Mapa ogródków</h2>
      <p>Plan działek i infrastruktury ogródków Montinowiec.</p>
    </div>
    <div class="map-wrapper">
      <img src="{{ '/assets/mapa-ogrodow.jpg' | relative_url }}" alt="Mapa ogrodów działkowych Montinowiec">
    </div>
  </div>
</section>

<section class="section">
  <div class="container feature-grid">
    <article class="feature-card">
      <h2>Regulaminy i dokumenty</h2>
      <p>Stałe miejsce na regulamin, projekty uchwał, dokumenty organizacyjne i pliki PDF.</p>
      <a class="text-link" href="{{ '/dokumentacja/#dokumenty' | relative_url }}">Zobacz dokumenty</a>
    </article>

    <article class="feature-card">
      <h2>Aktualności</h2>
      <p>Krótkie informacje o decyzjach, terminach, pracach gospodarczych i przygotowaniach do zebrań.</p>
      <a class="text-link" href="{{ '/aktualnosci/' | relative_url }}">Zobacz aktualności</a>
    </article>

    <article class="feature-card">
      <h2>Ogłoszenia</h2>
      <p>Ważne komunikaty dotyczące składek, zebrań, infrastruktury i spraw wymagających szybkiej reakcji.</p>
      <a class="text-link" href="{{ '/ogloszenia/' | relative_url }}">Zobacz ogłoszenia</a>
    </article>

    <article class="feature-card">
      <h2>Kontakt</h2>
      <p>Miejsce na dane osób odpowiedzialnych za sprawy organizacyjne, techniczne i finansowe.</p>
      <a class="text-link" href="{{ '/kontakt/' | relative_url }}">Przejdź do kontaktu</a>
    </article>
  </div>
</section>
