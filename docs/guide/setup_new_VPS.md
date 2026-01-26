# Installation av VPS-server hos STRATO

Om du någon gång beöver installera om din VPS-server från början så kan denna handledning vara till hjälp.

Jag har försökt ta med samtliga nödvändiga steg för att göra ominstallationen så enkel och snabb som möjligt.\
Har även försökt ge några kommentarer så att du vet vad du installerar och varför.

```ini
Alla kommandon är noterade i en sån här ruta
```

Ibland kan det finnas ett exempel på en dialog som kommandot kommer att ha med dig (för att erhålla ytterligare direktiv).

Dialogen är då markerad på nedanstående sätt med, av mig, angivna svar i **fet stil**

### **Exempel:**
> *Securing the MySQL server deployment.*\
> *Enter password for user root:* **Maija_2609**\
> *The 'validate_password' component is installed on the server.*\
> ...
> *Success.*

Naturligtvis kan vissa avsnitt vara lite blodfattiga och skulle må väl av lite mer beskrivande text men vi börjar så här och kompletterar med klargörande text om det visar sig nödvändigt.

Notera att **alla** installationssteg är anpassade för valet av operativsystem - jag har valt att använda **AlmaLinux**[^1].

---
## 1. Förberedelser (Lokal Dator)
Innan du rör servern, se till att du har en giltig **SSH-nyckel** på din lokala dator. Denna behövs för att automatisera inloggningen och öka säkerheten.

### Skapa SSH-nyckel[^2].

Jag som kör **Mac** öppnar ett terminalfönster och använder mig av ssh-keygen[^3].\
*(Du kanske föredrar **Windows** och måste då använda dig av något annat verktyg för att skapa din SSH-nyckel.)*
```ini
ssh-keygen -t rsa -b 4096 -C "MarketData-VPS"
```
Ange namnet till den fil i vilken SSH-nyckeln skall skapas samt ge ett lämpligt 'passphrase' för SSH-nyckeln.

I dialogen nedan så ser du de namn jag valt för den nuvarande installationen av vår gemensamma VPS-server. Du kanske vill använda andra namn. Om så, anteckna dem någonstans för säkerhets skull - du kanske behöver använda dem någon gång i fratiden. För tydlighets skull har jag utelämnat såväl 'fingerprint' samt 'image' för SSH-nyckeln (*långa haranger av tecken*).

> *Generating public/private rsa key pair.*\
*Enter file in which to save the key (/Users/siren/.ssh/id_rsa):*\
>**/Users/siren/.ssh/STRATO**\
>*Enter passphrase (empty for no passphrase):*\
**MarketData**\
*Enter same passphrase again:*\
**MarketData**\
*Your identification has been saved in /Users/siren/.ssh/STRATO*\
*Your public key has been saved in /Users/siren/.ssh/STRATO.pub*\
*The key fingerprint is:*\
...\
*The key's randomart image is:*\
...

### Konfigurera lokal SSH-config

För att slippa ange vilken nyckelfil som ska användas vid varje inloggning, ställ in din lokala konfiguration.

Detta gör att du kan skriva **ssh root@87.106.130.217** utan att behöva lägga till **-i ~/.ssh/STRATO** varje gång

```ini
nano ~/.ssh/config
```
Klistra in följande text
```ini
Host 87.106.130.217
    User root
    IdentityFile ~/.ssh/STRATO
    IdentitiesOnly yes
```
Spara filen och avsluta nano med hjälp av : **Ctrl+O, Enter, Ctrl+X**

---
## 2. Ominstallation via Strato-panelen
Efter att du skapat din SSH-nyckel så skall du logga in mot Strato

```ini
https://www.strato.se/apps/CustomerService
```
Ditt kundnummer är : **77971995**\
och dit lösenord är : **Maija---9377**

Du kommer nu att få upp en sida med dina avtals- och server-upgifter.
*Jag skriver ner de som gäller idag så att vi har dem lagrade någonstans förutom hos Strato. Dessa är inget du behöver bekymra dig om då de inte har någon bäring på ominstallationen i sig.*
>## Avtalsinformation
>Ordernummer : *9114028*\
>Paketnamn : **STRATO VPS Linux VC4-8** (12.se)\
>Pris / månad : **120 kr/månad**.\
>Beställningsdatum : **27/11/2024**\
>Aktiv sedan : **27/11/2024**\
>Nästa möjliga uppsägning : **27/11/2026**\

>## Serveruppgifter
>Operativsystem : **AlmaLinux 9**\
>Processor : **4 Kärnor**\
>RAM : **8 GB**\
>Lagringsutrymme : **240 GB**\
>Användare : **root**\
>Värd : **87.106.130.217**\
>Server IP-adress (IPv4) : **87.106.130.217**\
>Server IP-adress (IPv6) : **2a01:239:363:8500::1**

I slutet av sidan ser du ett antal knappar där "**Ominstallation**" är det val du skall göra när du avser att göra en ominstallation av VPS-servern.

När du klickar knappen "**Ominstallation**" så får du lite varningar om vad som kommer att ske och att det inte finns någon väg tillbaka om du väljer att gå vidare.

Din nuvarande installation kommer att helt raderas.

När och om du väljer att gå vidare så vill Strato att du anger din SSH-nyckel.

Du kopierar din SSH-nyckel (som är lååång och ligger i filen **/Users/siren/.ssh/STRATO.pub** (eller vilken fil du nu angav till ssh-keygen)). Kopiera och klistra in den i **Strato Re-installation wizard**.

I Mac miljö hämtar du den enklast genom att köra kommandot
```ini
cat ~/.ssh/STRATO.pub
```
Just nu ser vår SSH-nyckel som följer (*inses lätt att det blir tämligen svårt att knappa in den koden manuellt)*:

>*ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDDgxP5ButcDcA29EoX35TYCzkQrem8Vj0D2EG0RVYdfsBcmdVxhlXZiQLeMn6zWEevH+J73rQx0kGmeLxeclbHY/bdpLV1HdVQb3M4RjU+ry0Ki8BrujnO7yZ2J36uUZ7j9hvAfygOtGdqpwqkYntrJPL7LiEF6WvcVPF41NgZ4Q+e0LbGwqKjAVw5hR1u3ORG5sdhP5oYG6ICNz6ftJXSTc3SDTCgRT+rp3n5/xcuiOxIzngSMbXH31vyKmMNwADs9T4+0LNROlz5cCamoFHBjkYhIDqXOsrcDcqOYEwJEso+RjW9XmwwmdGHIX2m/fF26X3RaVwXLK9haqQD++CkDLkFfGzputGyR8mzTuPyw5OLs70i1RDNLMYLD/yF4WaHOupAcDgpsjjMULfVEiye28uemEkD0WLgJaCCWgAxW6W5IU1x/fUi3OQXLlG9Vpb2gYltZ7ojsiR8dXA4aZTAN2V78CeVchPJUdD4c6QoJmytgPK06iJFBiodSdGAj6vtbiqBQGVC74OPHdvPemY8GKlkoeAv+pXjaRkbao4oyZgZ5hbyyzS1IUyDbwexcyRRYrb1NQpvv70U0OQ+XOCORvarZZRQfuc16P6hB4C2u0eYlieHAZG3B2mnIzG6+FxyYQzTBbBN7GXO/49NydmA2cwZWJ17oQCIFzQMJbj3ww== MarketData-VPS*

**Notera** att du måste även ange ett lösenord när du initierar en om-installation av VPS-servern.

Jag använde **MarketData2025** som  lösenord. Du kanske vill ha något helt annat. Anteckna det lösenord du väljer att använda dig av på något säkert ställe då den är lätt att glömma.

All data för den nuvarande installationen kommer nu att raderas

Det dröjer en kort stund men strax är din nya VPS-server klar och du uppmanas att öppna en session mot din nya VPS-server.

```ini
ssh -i ~/.ssh/STRATO root@87.106.130.217
```
alternativt
```ini
ssh root@87.106.130.217
```
om du konfigurerat din lokala SSH-config

>Enter passphrase for key '**/Users/siren/.ssh/STRATO**':\
>**MarketData**

---
## 3. Grundläggande Serverkonfiguration
### Uppdatera systemet
Det första du alltid ska göra är att hämta de senaste säkerhetsuppdateringarna.
```ini
dnf update -y
```

### Installera nödvändiga verktyg
Installera textredigeraren 'nano' och kalkylatorn 'bc' (krävs för dina skript).
```ini
dnf install nano bc -y
```
---
## 4. Webbserver (Apache)
Vi installerar Apache (*kallas httpd i AlmaLinux*) för att kunna visa webbsidor.
```ini
dnf install httpd -y
systemctl enable --now httpd
```
---
## 5. Databas (MySQL 8)
AlmaLinux kommer förinställt med MariaDB, men vi behöver äkta MySQL 8 för kompatibilitet med våra lagrade procedurer.

### Förberedelse och Installation
1. Installera det officiella MySQL-repositoryt:
```ini
dnf install https://repo.mysql.com/mysql80-community-release-el9-5.noarch.rpm -y
```
2. Inaktivera den inbyggda modulen (för att undvika konflikter):
```ini
dnf module disable mysql -y
```
3. Installera MySQL Community Server:
```ini
dnf install mysql-community-server -y
```
4. Starta tjänsten
```ini
systemctl enable --now mysqld
```

### Återställning av Root-lösenord ("Safety Mode")
MySQL 8 genererar ett tillfälligt lösenord som ofta är svårt att hitta eller använda.

Vi går runt detta genom att starta databasen i ett läge där den inte kräver lösenord för att göra den initiala inställningen.
1. Stoppa databasen:
```ini
systemctl stop mysqld
```
2. Starta i osäkert läge:
```ini
systemctl set-environment MYSQLD_OPTS="--skip-grant-tables"
systemctl start mysqld
```
3. Logga in och sätt nytt lösenord:
```ini
mysql -u root
```
   - Kör följande SQL-kommandon (byt ut Maija_2609 mot ditt valda lösenord):
```ini
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'Maija_2609';
FLUSH PRIVILEGES;
EXIT;
```
4. Startat om i normalt läge:
```ini
systemctl stop mysqld
systemctl unset-environment MYSQLD_OPTS
systemctl start mysqld
```

### Skapa Databas och Användare
Nu loggar vi in "på riktigt" och skapar applikationsdatabasen och användare.

- **mysql -u root -p**

och ange lösenordet du satte ovan.
```ini
-- Skapa databasen
CREATE DATABASE MD;
-- Skapa användaren 'Admin' som får logga in utifrån (för Workbench)
CREATE USER 'Admin'@'%' IDENTIFIED BY 'Maija_2609';
GRANT ALL PRIVILEGES ON *.* TO 'Admin'@'%' WITH GRANT OPTION;
-- VIKTIGT: Skapa SAMMA användare för 'localhost' (för skript som körs på servern)
CREATE USER IF NOT EXISTS 'Admin'@'localhost' IDENTIFIED BY 'Maija_2609';
GRANT ALL PRIVILEGES ON *.* TO 'Admin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EXIT;
```
- Varför två användare?\
 MySQL ser User@% (fjärranvändare) och User@localhost (lokal användare) som två helt skilda konton. Utan localhost-användaren kommer dina importskript att misslyckas.

### Säkra installationen

Kör säkerhetsskriptet för att ta bort testdatabaser och anonyma användare.
```ini
mysql_secure_installation
```

> *Securing the MySQL server deployment.*\
>
> *Enter password for user root:*\
> 	**Maija_2609**\
> *The 'validate_password' component is installed on the server.*
> *The subsequent steps will run with the existing configuration*
> *of the component.*
> *Using existing password for root.*
> *Estimated strength of the password: 100*\
> *Change the password for root ? ((Press y|Y for Yes, any other key for No) :*
>
> *... skipping.*\
> *By default, a MySQL installation has an anonymous user,*
> *allowing anyone to log into MySQL without having to have*
> *a user account created for them. This is intended only for*
> *testing, and to make the installation go a bit smoother.*
> *You should remove them before moving into a production*
> *environment.*\
> *Remove anonymous users? (Press y|Y for Yes, any other key for No) :*\
> **y**\
> *Success*.
>
> *Normally, root should only be allowed to connect from*
> *'localhost'. This ensures that someone cannot guess at*
> *the root password from the network*.
>
> *Disallow root login remotely? (Press y|Y for Yes, any other key for No) :*\
> **y**\
> *Success*.
>
> *By default, MySQL comes with a database named 'test' that*
> *anyone can access. This is also intended only for testing,*
> *and should be removed before moving into a production*
> *environment.*\
> *Remove test database and access to it? (Press y|Y for Yes, any other key for No) :*\
> **y**\
> *Dropping test database...*\
> *Success.*
>
> *Removing privileges on test database...*\
> *Success.*
>
> *Reloading the privilege tables will ensure that all changes*
> *made so far will take effect immediately.*
>
> *Reload privilege tables now? (Press y|Y for Yes, any other key for No) :*\
> **y**\
> *Success*.
>
> *All done!*
---
## 6. PHP-installation

För att webbservern ska kunna köra din kod och prata med databasen.

1. Installera PHP och nödvändiga moduler:
```ini
dnf install php php-fpm php-mysqlnd php-opcache php-gd php-mbstring -y
```
2. Starta PHP-processhanteraren:
```ini
systemctl enable --now php-fpm
```
3. Starta om Apache (så den hittar PHP):
```ini
systemctl restart httpd
```
4. Verifiera att det körs:
```ini
systemctl status php-fpm
```
- *Du skall se en grön text som säger "**active (running)**"*
---
## 7. Säkerhet (Brandvägg & Fail2Ban)

### Konfigurera Brandväggen (Firewalld)
Vi måste stänga alla portar utom de vi faktiskt använder.
```ini
dnf install firewalld -y
systemctl enable --now firewalld
firewall-cmd --permanent --add-service=ssh
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --permanent --add-port=3306/tcp
firewall-cmd --reload
```
### Installera Fail2Ban
Detta skyddar servern mot "brute-force"-attacker genom att bannlysa IP-adresser som gissar fel lösenord för många gånger.
1. Installera EPEL (Extra Packages for Enterprise Linux):
```ini
dnf install epel-release -y
```
2. Installera Fail2Ban:
```ini
dnf install fail2ban fail2ban-firewalld -y
```
3. Konfigurera (skapa filen jail.local)
```ini
[DEFAULT]
bantime = 24h
findtime = 10m
maxretry = 5
# Lägg till din egen IP här för att undvika att du bannar dig själv!
ignoreip = 127.0.0.1/8 ::1 192.168.50.47
banaction = firewallcmd-rich-rules
banaction_allports = firewallcmd-rich-rules

[sshd]
enabled = true
backend = systemd
```
### Förklaring av inställningarna:

| Inställning  | Beskrivning  |
|---|---|
| **bantime**  | Hur länge en IP bannlyses (1h = 1 timme, 1d = 1 dag).  |
| **findtime** | Tidsfönstret där misslyckade försök räknas.  |
| **maxretry**  | Antal tillåtna försök inom tidsfönstret (t.ex. 5).  |
| **ignoreip**  | IP-adresser som aldrig ska bannas (din egen dator)  |
| **banaction**  | Vilken metod som används för att blockera (Firewalld).  |

### 4. Starta tjänsten
```ini
systemctl enable --now fail2ban
```

### 5. Verifiera att tjänsten fugerar
```ini
fail2ban-client status sshd
```

### Om jag råkat 'banna' mig själv
Om du oavsiktligt råkat banna dig själv så kan du göra 'unban' av en specifik IP-adress mhanedanstående kommando (från en annan IP som till exempel VNC-konsolen)
```ini
fail2ban-client set sshd unbanip 83.251.178.197
```
---
## 8. SSH & Rättigheter (Den svåra biten)
**Varning**: Försök **INTE** skapa en separat **webadmin**-användare för deployment om du inte är mycket van vid SELinux. Det orsakade stora problem tidigare.

Vi använder **root** för uppladdning och justerar rättigheterna efteråt.

### Fixa konfigurationen om inloggning strular
Om du inte kan logga in med SSH-nyckel direkt efter installationen kan AlmaLinux säkerhetsinställningar (SELinux) eller SSH-konfigurationen behöva justeras.

Om du blir utlåst, använd VNC-konsolen i Strato och kör följande kommandon för att tvinga systemet att acceptera dig:

1. **Tvinga in SSH-inställningar**:\
Istället för att editera originalfilen för SSH konfigurering (som i regel görs 'override' på) så skapar vi en sk "00"-fil.\
OpenSSH läser alltid in filer i alfabetisk ordning vilket gör att 00-fix.conf kommer att appliceras före normalkonfigureringen.

```ini
echo -e "PermitRootLogin yes\nPasswordAuthentication yes" > /etc/ssh/sshd_config.d/00-fix.conf
```
1. **Sätt SELinux till Permissive (tillåtande)**:\
I AlmaLinux, räcker det inte med att filer har korrekta rättigheter, de måste även ha en korrekt sk "Security Context". Om Security Context är felaktig så kommer det att blockera dig. Ändra därför till "PERMISSIVE" så att blockerigen hävs.
```ini
nano /etc/selinux/config
````
>Find the line:\
SELINUX=enforcing\
Change it to:\
SELINUX=permissive\
*Save the file (Ctrl+O, Enter) and Exit (Ctrl+X)*

- ändra till **SELINUX=permissive**.

1. **Starta om**: reboot.
## 9. Slutförande: Ladda upp och Sätt rättigheter
När du laddat upp dina filer (via ditt **deploy.sh** skript), måste du se till att webbservern äger dem, annars kan inte sidan visas.

Kör dessa kommandon efter varje stor uppladdning:
1. Ge ägarskap till Apache:
```ini
chown -R apache:apache /var/www/html/MD
```
2. Sätt rättigheter på mappar (755):
```ini
find /var/www/html/MD -type d -exec chmod 755 {} \;
```
3. Sätt rättigheter på filer (644):
```ini
find /var/www/html/MD -type f -exec chmod 644 {} \;
```
4. Tagga filer för SELinux (om du kör SELinux i Enforcing-läge):
```ini
chcon -R -t httpd_sys_content_t /var/www/html/MD
```

## 10. Lagra ditt SSH-lösenord (lokalt)
Lagra SSH-lösenordet i 'Apple Keychain' (*gäller bara om du kör Mac*)

```ii
- **ssh-add --apple-use-keychain ~/.ssh/STRATO**
```
Om du däremot använder dig av Windows så måste du göra detta på ett helt annat sätt.

Skulle gissa på att du där gör något i stil med följande.

Du aktiverar en Windows-tjänst som heter "**OpenSSH Authentication Agent**". Den skall fungera som en "hovmästare" som håller i nycklarna åt dig så att du slipper skriva lösenordet varje gång.

### Starta tjänsten (Görs en gång)
Som standard är denna tjänst ofta avstängd i Windows. Du måste slå på den.
1. Öppna **PowerShell** som Administratör\
(*Högerklicka på Start-menyn -> välj Terminal (Admin) eller PowerShell (Admin)*).
2. Kör följande kommando för att ställa in så att tjänsten startar automatiskt:
```ini
Get-Service ssh-agent | Set-Service -StartupType Automatic
```
3. Starta tjänsten nu direkt:
```ini
Start-Service ssh-agent
```
### Lägg till nyckeln
Nu när "hovmästaren" (agenten) är vaken, kan du ge nyckeln till honom.
1. I samma PowerShell-fönster, kör:
```ini
ssh-add C:\Users\DittNamn\.ssh\STRATO
```
- (*Byt ut DittNamn och sökvägen till där nyckeln ligger*).
2. Windows kommer fråga efter "Passphrase" en gång.
3. Skriv in lösenordet.
### Resultat
Nu ligger den upplåsta nyckeln i Windows minne (i SSH-agenten).
När du sedan kör dina skript eller skriver ssh root@... i PowerShell eller CMD, kommer Windows automatiskt att använda den upplåsta nyckeln utan att fråga dig om lösenordet igen.

---
# Klart! Din server är nu fullt installerad och säkrad

### NOTERA

root user är numera ändrad till **mormaija123**

## Om du behöver gå in i VNC-konsolen

### Montera disken

```ini
mkdir -p /mnt/vps
mount /dev/vda4 /mnt/vps
```

### Ändra root lösenord

```ini
chroot /mnt/vps passwd root
```

[^1]: # Vad är AlmaLinux?

    AlmaLinux är ett gratis, öppen källkods-operativsystem för servrar.

    Det är en så kallad "**Enterprise Linux**"-distribution.

    Det viktigaste att veta är att AlmaLinux är 1:1 binärt kompatibelt med RHEL (**Red Hat Enterprise Linux**).

    Det betyder att AlmaLinux i praktiken är Red Hat (*världens största kommersiella Linux*), men helt gratis och utan krav på dyra licenser eller supportavtal.

    ## Bakgrund
    För att förstå AlmaLinux måste man känna till dramat kring CentOS.

    I decennier var CentOS standardvalet för servrar. Det var en gratis kopia av Red Hat. I slutet av 2020 meddelade Red Hat (som äger CentOS) att de lägger ner den stabila versionen och ersätter den med CentOS Stream (en testversion för framtida uppdateringar).

    Världens systemadministratörer fick panik. De behövde ett stabilt system, inte en testbädd.

    AlmaLinux skapades som direkt svar på detta för att fylla tomrummet.

    ## Vem ligger bakom?
    AlmaLinux startades ursprungligen av företaget CloudLinux, som är giganter inom webbhotell-branschen. De insåg att deras kunder behövde ett alternativ till CentOS.

    För att garantera att projektet inte skulle köpas upp eller läggas ner (*som CentOS gjorde*), lämnade de dock snabbt över kontrollen till en **icke-vinstdrivande stiftelse** (*The AlmaLinux OS Foundation*).

    Idag backas projektet av jättar som:
      - **Microsoft**
      - **AWS (Amazon)**
      - **ARM**
      - **cPanel** (Standardverktyget för webbhotell)

    Detta gör att framtiden för operativsystemet anses vara mycket säker.

    ## Hur bra är det?
    Kort sagt: **Det är så bra det kan bli för en server**.

     - **Stabilitet** AlmaLinux fokuserar på extrem stabilitet framför "nyhetens behag". Programvaror kraschar sällan. Uppdateringar testas mycket noga.
     - **Säkerhet** Det kommer med säkerhetsfunktioner aktiverade som standard (t.ex. SELinux och brandväggar), vilket du redan har märkt under din installation. Det är designat för att stå emot attacker.
     - **Lång support** Version 9 (som vi kör) stöds med säkerhetsuppdateringar ända till 2032. Vi behöver alltså inte installera om servern på nästan 10 år.

    ## Hur populärt är det?
    Sedan lanseringen 2021 har AlmaLinux vuxit explosionsartat.
    Det är idag ett av de två dominerande valen för att ersätta CentOS (det andra är Rocky Linux).
    Det används av NASA, CERN och majoriteten av världens webbhotell.
    Om du hyr en VPS idag är AlmaLinux ofta standardvalet jämte Ubuntu LTS.

    AlmaLinux har blivit standard inom storföretag, banker och hosting-industrin.

    ## Slutsats
    Att jag valde AlmaLinux för vår "**MarketData**"-applikation är troligtvis ett bra val.

    Det kräver lite mer konfiguration i början (som vi sett med SSH-nycklar och databaser), men när det väl rullar är det en "stridsvagn" som sällan går sönder.
[^2]: # En kort introduktiontill SSH

    SSH-nycklar (**Secure Shell keys**) är en metod för att identifiera sig och logga in på en server utan att använda ett traditionellt lösenord. Det anses vara betydligt säkrare än vanliga lösenord och är industristandard för serverhantering.

    ## Hur fungerar det?
    Tekniken bygger på kryptografi med ett nyckelpar. Dessa två nycklar hör ihop matematiskt, men fyller olika funktioner:

    ## Den privata nyckeln (Private Key)
    Sparas på din lokala dator (t.ex. i **~/.ssh/id_ed25519**) och fungerar som din personliga ID-handling.

    Den får aldrig delas med någon. Om någon kommer över denna kan de logga in som du.

    ## Den publika nyckeln (Public Key)
    Placeras på servern du vill ansluta till (i filen **~/.ssh/authorized_keys**) och används för att verifiera att den privata nyckeln är äkta.

    Den är inte hemlig och kan kopieras till hur många servrar som helst.

    ## En enkel liknelse
    För att förstå skillnaden kan man tänka på ett hänglås:
      - Den **publika** nyckeln är som ett hänglås\
        Du kan ge hänglåset till servern och säga "Sätt detta på dörren".\
        Vem som helst kan se låset, men ingen kan öppna det utan rätt nyckel.
      - Den **privata** nyckeln är den faktiska fysiska nyckeln som du har i fickan\
        Endast din nyckel kan öppna låset som sitter på servern.

    När du försöker logga in skickar servern en "utmaning" till din dator.

    Din dator löser utmaningen med din privata nyckel.

    Om det matchar serverns publika nyckel (hänglåset), släpps du in.

    ## Varför använder vi SSH-nycklar?
      - **Högre säkerhet**\
        En SSH-nyckel är praktiskt taget omöjlig att knäcka med "brute-force" (gissningsattacker), till skillnad från korta lösenord.
      - **Automatisering**\
        Det möjliggör inloggning utan att en människa behöver sitta och skriva in ett lösenord. Detta är ett krav för att kunna köra automatiska script (t.ex. backup-script eller deploy.sh) mellan dator och server.
      - **Bekvämlighet**\
        Du slipper komma ihåg komplexa lösenord för varje server.
[^3]: # En kort förklaring till argumenten för ssh-keygen
    **-t** anger vilken metod (algoritm) som ska användas.\
    **-b** anger hur svår (storlek) nyckeln ska vara att knäcka.

    ### **-t rsa**
    står för "Type" och bestämmer vilken matematisk algoritm som ska användas för att generera nyckelparet./
    **RSA** (*Rivest–Shamir–Adleman*) är den äldsta och mest välkända algoritmen för kryptering./
    Den är "universell" och fungerar på precis alla system, även väldigt gamla servrar (vilket är dess största styrka).

    ### **-b 4096**
    står för "Bits" och bestämmer längden på nyckeln.
    4096 betyder att nyckeln består av 4096 ettor och nollor.\
    Ju högre siffra, desto svårare är nyckeln att knäcka med "brute force" (datorer som gissar).\
    En RSA-nyckel på 2048 bitar anses vara säker idag, men 4096 är "framtidssäkert" och anses vara extremt säkert. Nackdelen är att den är lite långsammare att generera och använda än kortare nycklar, men för SSH märks det knappt.

    ### **Notera** en viktig detalj

    ### RSA (4096)
    Den "gamla trotjänaren". Fungerar överallt. Nycklarna blir fysiskt väldigt långa textsträngar.\
    ### Ed25519
    Den "nya standarden". Den är säkrare än RSA och mycket snabbare, samtidigt som nyckeln är mycket kortare.

    Det verkar just nu som att Strato kräver användning av RSA men det kan ju ändras i framtiden.\
    Om de ändrar sin strategi så att de accepterar ed25519 så skall du istället använda dig av kommandot
      - **ssh-keygen -t ed25519 -C "MarketData-VPS"**

    *Notera att -b inte behövs för ed25519 eftersom den alltid har en fast, säker längd*.

---

# Maintenance Guide

This document outlines common maintenance tasks for the MarketData Analyzer application, including daily operations, data correction, and troubleshooting.

## 1. Daily Operations (Automated via Cron)

The application is designed to be self-maintaining through a nightly cron job that runs the **load.sh** script.

<pre>
<code>
00 10 * * 2-6 /usr/bin/bash /var/www/html/MD/SH/load.sh ALL >> /var/www/html/MD/LOG/logfile.log 2>&1
</code>
</pre>

This script performs the following key tasks automatically:

- Downloads new symbols and delisted symbols from EODHD.
- Downloads the latest daily prices, splits, and dividends.
- Calculates and updates technical indicators (Adjusted Close, SMA, EMA, MACD, etc.) for the new data.
- Pre-calculates summary tables (`Stock Metrics`, `Steep Slope`, `Golden & Death CrossX`, etc.) for fast front-end performance.

The cron job should be configured to run **after the stock market closes and EODHD has updated its daily data**.

### Monitoring
It is recommended to periodically review the log files located in the **LOG/** directory to ensure the nightly cron jobs are completing successfully.

## 2. Handling Data Errors and Reloading

Occasionally, the source data from EODHD may contain errors (e.g., incorrect split application, erroneous prices). The application has built-in features to correct this data.

### Scenario A: Reloading Full Price History for a Single Symbol

This is the most common maintenance task, used after EODHD has confirmed a data correction for a specific symbol.

**Step 1: Reload Price History**

Run the **load.sh** script with the **PricesDL** step, specifying the symbol and exchange with the **-s** and **-e** flags. This will delete the old price history for the symbol and replace it with the fresh, corrected data from the API.

#### Example: Reload full history for SAAB-B on the ST exchange
<pre><code>./load.sh -s SAAB-B -e ST PricesDL</code></pre>

**Step 2: Recalculate All Indicators for that Symbol**

After reloading the price history, you must recalculate all dependent indicators from scratch for that symbol. Start the script from the calcAdjustedClose step.

#### Example: Recalculate all indicators for SAAB-B

<pre><code>./load.sh -s SAAB-B -e ST SMACALC
./load.sh -s SAAB-B -e ST EMACALC
./load.sh -s SAAB-B -e ST MACD
./load.sh -s SAAB-B -e ST RSI
./load.sh -s SAAB-B -e ST BBandADX</code></pre>

This will run through SMA, EMA, MACD, RSI and Bollinger Bands and ADX calculation steps for only SAAB-B.

### Scenario B: Forcing a Full Recalculation for All Symbols

This is a more drastic step and should only be used if there has been a major data issue affecting many symbols or a change in the calculation logic itself.

**Note!** This process can take a significant amount of time.

Use the **-f** (full recalculation) flag and specify the starting step.

#### Example: Force a full recalculation of all EMAs for all exchanges

<pre><code>./load.sh -f EMACALC</code></pre>

#### Example: Force a full recalculation of EVERYTHING from the beginning

<pre><code>./load.sh -f ALL</code></pre>


Modify the SQL file containing the stored procedure definition (e.g., _ALL_SQL_STATEMENTS.sql).

Connect to the database using a client like MySQL Workbench.

DROP the old procedure and re-create it by running the updated CREATE PROCEDURE script.
After updating the schema or procedures, it is often necessary to run a full recalculation (see Scenario B above) to populate the new columns.

## 4. Troubleshooting

- Problem: Cron job fails.
    - Solution: Check the log file (LOG/logfile.log and the date-stamped load_YYYYMMDD.log). The error is most often related to PATH environment variables or database connection issues. Verify that the PATH is set correctly at the top of load.sh.
- Problem: A specific indicator (e.g., MACD) is NULL for a stock.
    - Solution: This usually means the stock doesn't have enough historical data to compute the indicator (e.g., fewer than 26 days of data for MACD). This is expected for newly listed stocks. If the stock has a long history, it may indicate a problem in the calculation logic for that specific symbol. Run a single-symbol recalculation in debug mode (-d) to see detailed logs.
- Problem: The front-end website is not loading (403 Forbidden error).
    - Solution: This is a file permissions issue on the web server. Ensure the Apache user (www-data or apache) has execute permissions on the entire directory path leading to the application and read permissions on the files. If using SELinux, ensure the correct security context (httpd_sys_content_t) is applied to the web directory.





Manual: Ominstallation av VPS-server (Strato)
Senast uppdaterad: 2026-01-23
System: AlmaLinux 9
Databas: MySQL 8

Denna guide beskriver steg-för-steg hur du ominstallerar din VPS-server från grunden. Guiden är anpassad för att återställa miljön för MarketData-applikationen.

1. Förberedelser (Lokal Dator)
Innan du rör servern, se till att du har en giltig SSH-nyckel på din lokala dator (Mac). Denna behövs för att automatisera inloggningen och öka säkerheten.

## Skapa SSH-nyckel
Om du inte redan har nyckeln STRATO skapad, kör följande i terminalen:
ssh-keygen -t rsa -b 4096 -C "MarketData-VPS"
Dialogen kommer se ut så här:
Enter file in which to save the key: /Users/siren/.ssh/STRATO
Enter passphrase: [Välj ett lösenord, t.ex. MarketData]
Varför? SSH-nycklar är säkrare än lösenord och krävs för att skript (som deploy.sh) ska kunna köra automatiskt. Vi använder RSA 4096-bitars kryptering för hög säkerhet.
Konfigurera lokal SSH-config
För att slippa ange vilken nyckelfil som ska användas vid varje inloggning, ställ in din lokala konfiguration.
nano ~/.ssh/config
Klistra in följande:
code
Text
Host 87.106.130.217
    User root
    IdentityFile ~/.ssh/STRATO
    IdentitiesOnly yes
Varför? Detta gör att du kan skriva ssh root@87.106.130.217 utan att behöva lägga till -i ~/.ssh/STRATO varje gång.
2. Ominstallation via Strato-panelen
Logga in på Strato Kundinloggning.
Gå till din serveröversikt (VPS Linux VC4-8).
Välj Ominstallation.
Välj operativsystem: AlmaLinux 9.
Viktigt: Under installationen kommer du ombedd att ange en "SSH Public Key".
Kör detta kommando lokalt på din Mac för att få fram nyckeln:
cat ~/.ssh/STRATO.pub
Kopiera hela strängen (börjar med ssh-rsa...) och klistra in i Strato.
Ange ett root-lösenord för servern (t.ex. MarketData2025).
Starta installationen.
Obs: Detta raderar ALL data på servern. Det tar ca 10–20 minuter innan servern är uppe igen.
3. Grundläggande Serverkonfiguration
När servern är ominstallerad, logga in via terminalen:
ssh root@87.106.130.217
Uppdatera systemet
Det första du alltid ska göra är att hämta de senaste säkerhetsuppdateringarna.
dnf update -y
Installera nödvändiga verktyg
Installera textredigeraren Nano och kalkylatorn BC (krävs för dina skript).
dnf install nano bc -y
4. Webbserver (Apache)
Vi installerar Apache (kallas httpd i AlmaLinux) för att kunna visa webbsidor.
dnf install httpd -y
systemctl enable --now httpd
5. Databas (MySQL 8)
AlmaLinux kommer förinställt med MariaDB, men vi behöver äkta MySQL 8 för kompatibilitet med dina lagrade procedurer.
Förberedelse och Installation
Installera det officiella MySQL-repositoryt:
dnf install https://repo.mysql.com/mysql80-community-release-el9-5.noarch.rpm -y
Inaktivera den inbyggda modulen (för att undvika konflikter):
dnf module disable mysql -y
Installera MySQL Community Server:
dnf install mysql-community-server -y
Starta tjänsten:
systemctl enable --now mysqld
Återställning av Root-lösenord ("Safety Mode")
MySQL 8 genererar ett tillfälligt lösenord som ofta är svårt att hitta eller använda. Vi går runt detta genom att starta databasen i ett läge där den inte kräver lösenord för att göra den initiala inställningen.
Stoppa databasen:
systemctl stop mysqld
Starta i osäkert läge:
systemctl set-environment MYSQLD_OPTS="--skip-grant-tables"
systemctl start mysqld
Logga in och sätt nytt lösenord:
mysql -u root
Kör följande SQL-kommandon (byt ut Maija_2609 mot ditt valda lösenord):
code
SQL
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'Maija_2609';
FLUSH PRIVILEGES;
EXIT;
Starta om i normalt läge:
systemctl stop mysqld
systemctl unset-environment MYSQLD_OPTS
systemctl start mysqld
Skapa Databas och Användare
Nu loggar vi in "på riktigt" och skapar din applikationsdatabas och användare.
mysql -u root -p (Ange lösenordet du satte ovan)
Kör följande SQL:
code
SQL
-- Skapa databasen
CREATE DATABASE MD;

-- Skapa användaren 'Admin' som får logga in utifrån (för Workbench)
CREATE USER 'Admin'@'%' IDENTIFIED BY 'Maija_2609';
GRANT ALL PRIVILEGES ON *.* TO 'Admin'@'%' WITH GRANT OPTION;

-- VIKTIGT: Skapa SAMMA användare för 'localhost' (för skript som körs på servern)
CREATE USER IF NOT EXISTS 'Admin'@'localhost' IDENTIFIED BY 'Maija_2609';
GRANT ALL PRIVILEGES ON *.* TO 'Admin'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;
EXIT;
Varför två användare? MySQL ser User@% (fjärranvändare) och User@localhost (lokal användare) som två helt skilda konton. Utan localhost-användaren kommer dina importskript att misslyckas.
Säkra installationen
Kör säkerhetsskriptet för att ta bort testdatabaser och anonyma användare.
mysql_secure_installation
Svara Y (Yes) på alla frågor (Remove anonymous users, Disallow root login remotely, Remove test database).
6. PHP-installation
För att webbservern ska kunna köra din kod och prata med databasen.
Installera PHP och nödvändiga moduler:
dnf install php php-fpm php-mysqlnd php-opcache php-gd php-mbstring -y
Starta PHP-processhanteraren:
systemctl enable --now php-fpm
Starta om Apache (så den hittar PHP):
systemctl restart httpd
Verifiera att det körs:
systemctl status php-fpm
7. Säkerhet (Brandvägg & Fail2Ban)
Konfigurera Brandväggen (Firewalld)
Vi måste stänga alla portar utom de vi faktiskt använder.
dnf install firewalld -y
systemctl enable --now firewalld
firewall-cmd --permanent --add-service=ssh
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --permanent --add-port=3306/tcp (För MySQL Workbench)
firewall-cmd --reload
Installera Fail2Ban
Detta skyddar servern mot "brute-force"-attacker genom att bannlysa IP-adresser som gissar fel lösenord för många gånger.
Installera EPEL (Extra Packages for Enterprise Linux):
dnf install epel-release -y
Installera Fail2Ban:
dnf install fail2ban fail2ban-firewalld -y
Konfigurera (skapa filen jail.local):
nano /etc/fail2ban/jail.local
Klistra in:
code
Ini
[DEFAULT]
bantime = 24h
findtime = 10m
maxretry = 5
# Lägg till din egen IP här för att undvika att du bannar dig själv!
ignoreip = 127.0.0.1/8 ::1 192.168.50.47
banaction = firewallcmd-rich-rules
banaction_allports = firewallcmd-rich-rules

[sshd]
enabled = true
backend = systemd
Starta tjänsten:
systemctl enable --now fail2ban
8. SSH & Rättigheter (Den svåra biten)
Varning: Försök INTE skapa en separat webadmin-användare för deployment om du inte är mycket van vid SELinux. Det orsakade stora problem tidigare. Vi använder root för uppladdning och justerar rättigheterna efteråt.
Fixa konfigurationen om inloggning strular
Om du inte kan logga in med SSH-nyckel direkt efter installationen kan AlmaLinux säkerhetsinställningar (SELinux) eller SSH-konfigurationen behöva justeras.
Om du blir utlåst, använd VNC-konsolen i Strato och kör följande kommandon för att tvinga systemet att acceptera dig:
Tvinga in SSH-inställningar:
echo -e "PermitRootLogin yes\nPasswordAuthentication yes" > /etc/ssh/sshd_config.d/00-fix.conf
Sätt SELinux till Permissive (tillåtande):
Editera /etc/selinux/config och ändra till SELINUX=permissive.
Starta om: reboot.
9. Slutförande: Ladda upp och Sätt rättigheter
När du laddat upp dina filer (via ditt deploy.sh skript), måste du se till att webbservern äger dem, annars kan inte sidan visas.
Kör dessa kommandon efter varje stor uppladdning:
Ge ägarskap till Apache:
chown -R apache:apache /var/www/html/MD
Sätt rättigheter på mappar (755):
find /var/www/html/MD -type d -exec chmod 755 {} \;
Sätt rättigheter på filer (644):
find /var/www/html/MD -type f -exec chmod 644 {} \;
Tagga filer för SELinux (om du kör SELinux i Enforcing-läge):
chcon -R -t httpd_sys_content_t /var/www/html/MD
Klart! Din server är nu fullt installerad och säkrad.