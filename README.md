# Ogrody działkowe Montinowiec

Prosta strona Jekyll/GitHub Pages dla informacji administracyjnych ogrodów działkowych.

## Struktura repozytorium

- `_config.yml` - podstawowa konfiguracja Jekyll/GitHub Pages.
- `_layouts/` - szablony stron.
- `_includes/` - wspólne fragmenty HTML, np. nagłówek i stopka.
- `_data/` - edytowalne listy dokumentów, aktualności i nawigacji.
- `assets/css/site.css` - style strony.
- `documents/` - sugerowane miejsce na nowe pliki PDF i załączniki.
- `sources/documents/` - źródłowe pliki Markdown używane później do generowania PDF.
- `spotkania/` - materiały ze spotkań, w tym obecne podsumowanie PDF.
- `index.md`, `dokumentacja.md`, `kontakt.md` - strony widoczne publicznie.

## Najważniejsze pliki

- `dokumentacja.md` - główna strona "Rozporządzenia i dokumentacja".
- `_layouts/documentation.html` - szablon listy aktualności, ogłoszeń i dokumentów.
- `_data/documents.yml` - lista dokumentów i plików PDF.
- `_data/announcements.yml` - lista aktualności i ogłoszeń.
- `assets/css/site.css` - style strony.

## GitHub Pages

Strona jest przygotowana jako klasyczna strona Jekyll budowana z katalogu głównego repozytorium. W ustawieniach GitHub Pages wybierz:

1. Source: `Deploy from a branch`.
2. Branch: `main` albo `master`, zależnie od nazwy gałęzi.
3. Folder: `/ (root)`.

Nie są wymagane dodatkowe pluginy, frameworki ani Gemfile. GitHub Pages powinien zbudować stronę standardowym Jekyllem.

Pliki robocze i lokalne artefakty są pomijane przez `.gitignore`. Dodatkowo `_config.yml` wyklucza z publikacji duży plik audio oraz katalog z roboczym transkryptem spotkania.

## Dodanie dokumentu PDF

1. Dodaj plik PDF do repozytorium, najlepiej do katalogu `documents/`.
2. Dopisz nowy wpis w `_data/documents.yml`.
3. W polu `file` wpisz ścieżkę zaczynającą się od `/`, np. `/documents/regulamin.pdf`.

## Źródła Markdown do PDF

1. Trzymaj edytowalne źródła Markdown w katalogu `sources/documents/`.
2. Generuj z nich PDF dopiero wtedy, gdy dokument ma zostać opublikowany albo udostępniony do pobrania.
3. Gotowy PDF zapisuj w `documents/`, a potem dodawaj wpis w `_data/documents.yml`.

## Dodanie aktualności lub ogłoszenia

1. Dopisz nowy wpis w `_data/announcements.yml`.
2. Ustaw `level: "important"` dla ważnych komunikatów.
3. Opcjonalnie dodaj `link` albo `file`.

## Przykładowy wpis dokumentu

```yaml
- title: "Regulamin ogrodów działkowych"
  category: "Regulaminy i zasady"
  date: 2026-09-15
  status: "projekt"
  file: "/documents/regulamin-ogrodow.pdf"
  description: "Projekt regulaminu do konsultacji przed zebraniem."
```

## Przykładowy wpis ogłoszenia

```yaml
- title: "Zebranie działkowców"
  date: 2026-09-20
  type: "Ogłoszenie"
  level: "important"
  description: "Zebranie dotyczące regulaminu i dokumentów organizacyjnych."
  link: "/dokumentacja/#dokumenty"
```

Strona nie wymaga dodatkowych frameworków ani pluginów Jekyll.
