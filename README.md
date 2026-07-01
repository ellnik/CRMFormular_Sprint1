# CRMFormular_Sprint1

## Beschreibung

CRMFormular_Sprint1 ist eine einfache Webanwendung, die mit **Java**, **JSP**, **Servlets** und **JavaBeans** entwickelt wurde.

Das Projekt demonstriert das Zusammenspiel zwischen den einzelnen Komponenten einer Java-Webanwendung nach dem MVC-Prinzip (Model – View – Controller).

Da in diesem Sprint noch keine Datenbank verwendet wird, werden die Testdaten vom **FakeDataManager** erzeugt.

---

# Projektziel

Ziel des Projekts ist die Entwicklung einer kleinen CRM-Anwendung, in der Aufgaben (Tasks) angezeigt und ausgewählt werden können.

Die Anwendung zeigt, wie Daten zwischen JavaBeans, Servlets und JSP-Seiten übertragen werden.

---

# Verwendete Technologien

- [x] Java
- [x] JSP (JavaServer Pages)
- [x] Java Servlet
- [x] JavaBeans
- [x] HTML5
- [x] CSS3
- [x] Apache Tomcat 11
- [x] Eclipse IDE

---

# Projektstruktur

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
└── src/main/webapp
    ├── index.jsp
    ├── TaskList.jsp
    ├── TaskForm.jsp
    └── WEB-INF
```

---

# Programmablauf

### 1. Startseite

Die Anwendung startet mit **index.jsp**.

Der Benutzer sieht eine Startseite mit einem modernen Layout und klickt auf

**„Task-Liste anzeigen“**.

---

### 2. Verarbeitung im Servlet

Das **IndexServlet** übernimmt die Steuerung der Anwendung.

Es

- erstellt den FakeDataManager,
- lädt alle Aufgaben,
- speichert sie in einer TaskListBean,
- übergibt die Daten an die JSP-Seite.

---

### 3. FakeDataManager

Der FakeDataManager erzeugt mehrere Testaufgaben.

Beispiel:

- [x] Java lernen
- [x] JSP lernen
- [x] Servlet lernen
- [x] HTML lernen

Später kann der FakeDataManager problemlos durch eine MySQL-Datenbank ersetzt werden.

---

### 4. Anzeige der Aufgaben

Die Seite **TaskList.jsp** liest die TaskListBean aus und zeigt alle Aufgaben automatisch in einer Schleife an.

Jede Aufgabe wird als Schaltfläche dargestellt.

Beim Anklicken wird die Task-ID an das Servlet gesendet.

---

### 5. Formularseite

Nach der Auswahl öffnet das Servlet die Seite **TaskForm.jsp**.

Die ausgewählte Task-ID wird angezeigt.

Zusätzlich besitzt die Seite:

- Datum
- Zurück-Schaltfläche
- Startseite-Schaltfläche
- modernes Layout

---

# Klassenbeschreibung

## TaskBean

Speichert die Daten einer einzelnen Aufgabe.

Attribute

1. id
2. titel

Methoden

1. Getter
2. Setter
3. Konstruktoren

---

## TaskListBean

Speichert alle Aufgaben.

Enthält

```java
List<TaskBean>
```

---

## FakeDataManager

Erstellt Testdaten.

Zurzeit werden keine Daten aus einer Datenbank gelesen.

---

## IndexServlet

Steuert den gesamten Programmablauf.

Aufgaben:

- [x] Request verarbeiten
- [x] Daten laden
- [x] JavaBeans erstellen
- [x] Daten an JSP übergeben
- [x] Formular öffnen

---

# Benutzeroberfläche

Alle Seiten besitzen ein einheitliches Design.

### Funktionen

- modernes Kartenlayout
- einheitliche Schrift
- blaue Buttons
- Hover-Effekt
- Icons
- aktuelles Datum
- Anzeige der Anzahl aller Aufgaben
- Footer mit Projektinformationen
- responsive Anordnung der Elemente

---

# Aktuelle Funktionen

- [x] Startseite anzeigen

- [x] Aufgabenliste anzeigen

- [x] Anzahl der Aufgaben anzeigen

- [x] Aufgabe auswählen

- [x] Task-ID übergeben

- [x] Formular öffnen

- [x] Navigation zwischen den Seiten

- [x] Anzeige des aktuellen Datums

✔ Einheitliches Layout

✔ Footer auf allen Seiten

---

# Zukünftige Erweiterungen

- MySQL-Datenbank
- Aufgaben bearbeiten
- Aufgaben speichern
- Aufgaben löschen
- Suchfunktion
- Validierung der Eingaben
- Login-System
- Benutzerverwaltung

---

# MVC-Architektur

```
Browser
    │
    ▼
index.jsp
    │
    ▼
IndexServlet
    │
    ▼
FakeDataManager
    │
    ▼
TaskListBean
    │
    ▼
TaskList.jsp
    │
    ▼
Task auswählen
    │
    ▼
IndexServlet
    │
    ▼
TaskForm.jsp
```

---

# Autor

**Olena Nikolaienko**

---

Projekt im Rahmen der Umschulung zur Fachinformatikerin für Anwendungsentwicklung.
Result:https://github.com/ellnik/CRMFormular_Sprint1/blob/main/CRM%20Formular_Sprint1_1.png
Result:https://github.com/ellnik/CRMFormular_Sprint1/blob/main/CRM%20Formular_Sprint1_2.png
Result:https://github.com/ellnik/CRMFormular_Sprint1/blob/main/CRM%20Formular_Sprint1_3.png
