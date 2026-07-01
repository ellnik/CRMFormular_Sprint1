# CRMFormular_Sprint1

## Beschreibung

Dieses Projekt wurde mit **Java**, **JSP**, **Servlet** und **JavaBeans** entwickelt.

Ziel des Projekts ist es, die Zusammenarbeit zwischen **JSP**, **Servlet**, **JavaBean** und einem **FakeDataManager** zu demonstrieren.

Der Benutzer startet die Anwendung über die Startseite. Anschließend wird eine Liste von Aufgaben angezeigt. Die Aufgaben werden vom `FakeDataManager` erzeugt und über eine `TaskListBean` an die JSP übergeben.

Wählt der Benutzer eine Aufgabe aus, wird deren ID als **Request-Parameter** an das Servlet gesendet. Danach öffnet sich eine Formularseite zur Bearbeitung der ausgewählten Aufgabe.

---

## Verwendete Technologien

- [x] Java
- [x] JSP (JavaServer Pages)
- [x] Servlet
- [x] JavaBeans
- [x] HTML
- [x] CSS
- [x] Apache Tomcat 11
- [x] Eclipse IDE

---

## Projektstruktur

```
CRMFormular_Sprint1
│
├── bean
│   ├── TaskBean.java
│   └── TaskListBean.java
│
├── manager
│   └── FakeDataManager.java
│
├── servlet
│   └── IndexServlet.java
│
└── webapp
    ├── index.jsp
    ├── TaskList.jsp
    └── TaskForm.jsp
```

---

## Projektablauf

1. Die Startseite (`index.jsp`) wird geöffnet.
2. Das `IndexServlet` lädt die Aufgaben vom `FakeDataManager`.
3. Die Aufgaben werden in einer `TaskListBean` gespeichert.
4. Die `TaskList.jsp` zeigt alle Aufgaben als Buttons an.
5. Der Benutzer wählt eine Aufgabe aus.
6. Die Task-ID wird als Request-Parameter an das Servlet gesendet.
7. Das Servlet öffnet die `TaskForm.jsp`.

---

## Klassenbeschreibung

### TaskBean

Speichert die Daten einer einzelnen Aufgabe.

Attribute:

- id
- titel

Methoden:

- Getter
- Setter
- Konstruktoren

---

### TaskListBean

Speichert eine Liste aller Aufgaben.

Enthält:

- `List<TaskBean>`

---

### FakeDataManager

Erstellt Testdaten.

Zurzeit werden die Aufgaben nicht aus einer Datenbank gelesen, sondern direkt im Code erzeugt.

---

### IndexServlet

Steuert den Ablauf der Anwendung.

Aufgaben:

- [x] Aufgaben laden
- [x] Daten an JSP übergeben
- [x] Request-Parameter verarbeiten
- [x] Formular öffnen

---

## Funktionen

- [x] Startseite anzeigen
- [x] Aufgabenliste anzeigen
- [x] Aufgabe auswählen
- [x] Task-ID an das Servlet senden
- [x] Formular öffnen

---

## Benutzeroberfläche

Die Benutzeroberfläche wurde mit HTML und CSS gestaltet.

Alle Seiten besitzen:

- ein einheitliches Design
- blaue Schaltflächen
- zentrierte Darstellung
- modernes Layout

---

## Zukünftige Erweiterungen

- [x] MySQL-Datenbank anbinden
- [x] Aufgaben speichern
- [x] Aufgaben bearbeiten
- [x] Aufgaben löschen
- [x] Suche hinzufügen
- [x] Validierung der Eingaben

Result:https://github.com/ellnik/CRMFormular_Sprint1/blob/main/CRM%20Formular_Sprint1_1.png
Result:https://github.com/ellnik/CRMFormular_Sprint1/blob/main/CRM%20Formular_Sprint1_2.png
Result:
