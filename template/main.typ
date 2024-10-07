#import "../src/lib.typ": *
// #import "@preview/tgm-hit-protocol:0.1.0": *

#show: template(

  title: [Protokolle in Typst],
  course: [5AHIT 2024/25],
  subtitle: [Laborprotokoll],
  subject: [Systemtechnik Labor],
  author: [Simon Gao],
  teacher: [Clemens Koza],
  version: [1.1],
  begin: datetime(year: 2024, month: 10, day: 7).display("[day]. [month repr:long] [year]"),
  finish: [\07. Oktober 2024],
)

= Einführung
Diese Protokollvorlage soll helfen den Laborübungsteil entsprechend
dokumentieren zu können. Diese Vorlage ist in Typst verfasst.

== Ziele
Hier werden die zu erwerbenden Kompetenzen und deren Deskriptoren beschrieben.
Diese werden von den unterweisenden Lehrkräften vorgestellt.

Dies kann natürlich auch durch eine Aufzählung erfolgen:
- Dokumentiere wichtige Funktionen
- Gib eine Einführung zur Verwendung von Typst

== Voraussetzungen
Welche Informationen sind notwendig um die Laborübung reibungslos durchführen zu
können? Hier werden alle Anforderungen der Lehrkraft detailliert beschrieben und
mit Quellen untermauert.

== Aufgabenstellung
Hier wird dann die konkrete Aufgabenstellung der Laborübung definiert.

== Bewertung
Hier wird die Bewertung für das Beispiel auf die jeweiligen Kompetenzen
aufgeteilt. Diese soll zur leichteren Abnahme auch nicht entfernt werden.

Nun kommt ein Seitenumbruch, um eine klare Trennung der Schülerarbeit zu
bestimmen.

#pagebreak()

= Anwendung

Hier sollen die Schritte der Laborübung erläutert werden. Hier sind alle
Fragestellungen der Lehrkraft zu beantworten. Etwaige Probleme bzw.
Schwierigkeiten sollten ebenfalls hier angeführt werden.

In diesem Fall werden einige Typst-Elemente dokumentiert, welche bei der
Kreation von Protokollen behilflich sein könnten.

== Figures

Wenn man etwas in ein figure packt, dann kann es in einem Abbildungsverzeichnis
(oder ähnliches) später aufgelistet werden.

#figure(
    "Auch Text ist möglich!",
    caption: "Figure mit Text"
) <text-figure>

Man kann ihnen Labels (\<text-figure>) geben, und referenzieren (@text-figure).

Die folgenden Features können auch ohne figures verwendet werden.

== Abbildungen

#figure(
  image("/gallery/logo-right.png", width: 50%), caption: "Mit Beschreibung und Label",
)

== Mathe :)

=== Inline
Die coole Formel: $e^(i*pi)+1=0$

=== Zentriert
$ e^(i*pi)+1=0 $

=== Figure
#figure($ e^(i*pi)+1=0 $, caption: "Eulersche Identität")

== Tabellen

#figure(
  table(
    columns: (1fr, 9fr), table.header([*Header*], [*Kopf*]), [#lorem(2)], [#lorem(10)], [#lorem(2)], [uwu],
  ), caption: "Tabellen",
)

== Aufzählung

- Element einer Aufzählung
  - Erstes eingerücktes Element einer Aufzählung
  - Zweites eingerücktes Element einer Aufzählung

+ Element einer Aufzählung
  + Erstes eingerücktes Element einer Aufzählung
  + Zweites eingerücktes Element einer Aufzählung

== Quelltext

#figure(```cpp
  #include <iostream>
  int main() {
      // Ich bin ein Kommentar!
      std::cout << "Hello World! :3\n";
  }
  ```,
  caption: "C++ Code")
