---
title: "Ogłoszenia"
description: "Ważne komunikaty dla działkowców dotyczące składek, zebrań, spraw technicznych i organizacyjnych."
last_modified: 2026-05-24
permalink: /ogloszenia/
---

{% assign notices = site.data.announcements | where: "type", "Ogłoszenie" | sort: "date" | reverse %}

<section class="page-hero page-hero--compact">
  <div class="container hero-grid">
    <div>
      <p class="eyebrow">Ogłoszenia</p>
      <h1>Ważne komunikaty dla działkowców</h1>
      <p class="lead">{{ page.description }}</p>
    </div>

  </div>
</section>

<section class="section section--plain">
  <div class="container notice-list">
    {% for item in notices %}
      <article class="notice{% if item.level == 'important' %} notice--important{% endif %}">
        <div class="notice-meta">
          <time datetime="{{ item.date | date: '%Y-%m-%d' }}">{{ item.date | date: "%d.%m.%Y" }}</time>
          {% if item.type %}<span>{{ item.type }}</span>{% endif %}
        </div>
        <h2>{{ item.title }}</h2>
        <p>{{ item.description }}</p>
        <div class="actions">
          {% if item.file %}
            <a class="button button--small" href="{{ item.file | relative_url }}">Otwórz plik</a>
          {% endif %}
          {% if item.link %}
            {% if item.link contains "://" %}
              <a class="text-link" href="{{ item.link }}">Czytaj więcej</a>
            {% else %}
              <a class="text-link" href="{{ item.link | relative_url }}">Czytaj więcej</a>
            {% endif %}
          {% endif %}
        </div>
      </article>
    {% endfor %}
  </div>
</section>
