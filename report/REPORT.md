# Звіт з лабораторної роботи

**Репета Андрій Назарович** …  **КІ-405** …  **Варіант: 18** …

Посилання на репозиторій: https://github.com/OJDrey/KSN_LR10

## 1–3. Драйвер мережевого адаптера
<img width="392" height="467" alt="image" src="https://github.com/user-attachments/assets/42e30954-61d8-4b9c-a64d-a24167515310" />


## 4. IP-адреса та маска
(адреса, маска, розрахунок маски підмережі)
IP-адреса: 192.168.31.200, маска: 255.255.255.0, мережа: 192.168.31.0/24
Кількість хостів у підмережі: ^{32-24} - 2 = 254$ пристрої.
## 5. systeminfo
Host Name:                     PC_107V_1
OS Name:                       Майкрософт Windows 11 Pro Education
OS Version:                    10.0.26300 N/A Build 26300
OS Manufacturer:               Microsoft Corporation
OS Configuration:              Standalone Workstation
OS Build Type:                 Multiprocessor Free
Registered Owner:              PC_107_1
Registered Organization:       N/A
Product ID:                    00379-27931-95682-AAOEM
Original Install Date:         20.09.2025, 13:26:20
System Boot Time:              19.10.2026, 14:15:05
System Manufacturer:           Acer
System Model:                  Veriton N1502G
System Type:                   x64-based PC
Processor(s):                  1 Processor(s) Installed.
                               [01]: Intel64 Family 6 Model 186 Stepping 3 GenuineIntel ~1200 Mhz
BIOS Version:                  Acer 4.03, 18.07.2025
Windows Directory:             C:\Windows
System Directory:              C:\Windows\system32
Boot Device:                   \Device\HarddiskVolume1
System Locale:                 uk;українська
Input Locale:                  uk;українська
Time Zone:                     (UTC+02:00) Вільнюс, Гельсінкі, Київ, Рига, Софія, Таллінн
Total Physical Memory:         16 107 MB
Available Physical Memory:     8 223 MB
Virtual Memory: Max Size:      17 131 MB
Virtual Memory: Available:     8 597 MB
Virtual Memory: In Use:        8 534 MB
Page File Location(s):         C:\pagefile.sys
Domain:                        WORKGROUP
Logon Server:                  \\PC_107V_1
Hotfix(s):                     7 Hotfix(s) Installed.
                               [01]: KB5127694
                               [02]: KB5050575
                               [03]: KB5054156
                               [04]: KB5078674
                               [05]: KB5121794
                               [06]: KB5127648
                               [07]: KB5127647
Network Card(s):               4 NIC(s) Installed.
                               [01]: Realtek PCIe GbE Family Controller
                                     Connection Name: Ethernet
                                     Status:          Media disconnected
                               [02]: Intel(R) Wi-Fi 6 AX101
                                     Connection Name: Wi-Fi
                                     DHCP Enabled:    Yes
                                     DHCP Server:     192.168.31.1
                                     IP address(es)
                                     [01]: 192.168.31.200
                                     [02]: fe80::a83:af0e:94ad:f1f2
                               [03]: Realtek PCIe GbE Family Controller
                                     Connection Name: Ethernet 2
                                     Status:          Media disconnected
                               [04]: VirtualBox Host-Only Ethernet Adapter
                                     Connection Name: Ethernet 3
                                     DHCP Enabled:    No
                                     IP address(es)
                                     [01]: 192.168.56.1
                                     [02]: fe80::f044:9d85:dbe5:8e47
Virtualization-based security: Status: Running
                               Required Security Properties:
                                     Base Virtualization Support
                               Available Security Properties:
                                     Base Virtualization Support
                                     Secure Boot
                                     DMA Protection
                                     UEFI Code Readonly
                                     SMM Security Mitigations 1.0
                                     Mode Based Execution Control
                                     APIC Virtualization
                               Services Configured:
                                     Hypervisor enforced Code Integrity
                               Services Running:
                                     Hypervisor enforced Code Integrity
                               App Control for Business policy: Enforced
                               App Control for Business user mode policy: Off
                               Security Features Enabled:
Hyper-V Requirements:          A hypervisor has been detected. Features required for Hyper-V will not be displayed.
## 6. ping (ключі -t, -n, -l, -a …)
C:\Users\PC_107_1>ping 8.8.8.8 -a

Pinging 8.8.8.8 with 32 bytes of data:
Reply from 8.8.8.8: bytes=32 time=23ms TTL=114
Reply from 8.8.8.8: bytes=32 time=30ms TTL=114
Reply from 8.8.8.8: bytes=32 time=22ms TTL=114
Reply from 8.8.8.8: bytes=32 time=25ms TTL=114

Ping statistics for 8.8.8.8:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 22ms, Maximum = 30ms, Average = 25ms
## 7. tracert
C:\Users\PC_107_1>tracert google.com

Tracing route to google.com [142.250.109.100]
over a maximum of 30 hops:

  1    37 ms     5 ms     6 ms  XiaoQiang [192.168.31.1]
  2    44 ms    30 ms     9 ms  10.3.15.254
  3     6 ms     5 ms     3 ms  10.10.10.23
  4     9 ms     4 ms     3 ms  109.201.239.1.fixed.ter.volia.net [109.201.239.1]
  5    20 ms    21 ms    21 ms  77.121.15.41.ter.volia.net [77.121.15.41]
  6     6 ms    11 ms    11 ms  v299.agg-1.ter.volia.net [77.121.15.157]
  7    31 ms    27 ms   125 ms  v2509.kiev.g50.as3326.net [194.146.198.192]
  8   561 ms     8 ms    12 ms  et-0-3-1.2.at.mx10.iev1.core.as3326.net [88.81.245.62]
  9    82 ms    69 ms    14 ms  192.178.68.164
 10    10 ms    11 ms     8 ms  192.178.243.65
 11    34 ms    22 ms    15 ms  74.125.245.62
 12    65 ms    58 ms    77 ms  142.251.242.35
 13    47 ms    48 ms    33 ms  216.239.41.1
 14    33 ms   114 ms    27 ms  142.250.228.114
 15     *        *        *     Request timed out.
 16     *        *        *     Request timed out.
 17     *        *        *     Request timed out.
 18     *        *        *     Request timed out.
 19     *        *        *     Request timed out.
 20     *        *        *     Request timed out.
 21     *        *        *     Request timed out.
 22    42 ms    23 ms    23 ms  zr-in-f100.1e100.net [142.250.109.100]

Trace complete.
## 8. netstat (-a, -n, -o …)
C:\Users\PC_107_1>netstat -an

Active Connections

  Proto  Local Address          Foreign Address        State
  TCP    0.0.0.0:135            0.0.0.0:0              LISTENING
  TCP    0.0.0.0:445            0.0.0.0:0              LISTENING
  TCP    0.0.0.0:5040           0.0.0.0:0              LISTENING
  TCP    0.0.0.0:7680           0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49664          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49665          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49668          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49669          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49670          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49682          0.0.0.0:0              LISTENING
  TCP    127.0.0.1:49671        127.0.0.1:49672        ESTABLISHED
  TCP    127.0.0.1:49672        127.0.0.1:49671        ESTABLISHED
  TCP    127.0.0.1:49680        127.0.0.1:49681        ESTABLISHED
  TCP    127.0.0.1:49681        127.0.0.1:49680        ESTABLISHED
  TCP    127.0.0.1:49683        127.0.0.1:49684        ESTABLISHED
  TCP    127.0.0.1:49684        127.0.0.1:49683        ESTABLISHED
  TCP    127.0.0.1:51469        127.0.0.1:51470        ESTABLISHED
  TCP    127.0.0.1:51470        127.0.0.1:51469        ESTABLISHED
  TCP    127.0.0.1:51779        0.0.0.0:0              LISTENING
  TCP    127.0.0.1:51780        0.0.0.0:0              LISTENING
  TCP    127.0.0.1:51781        0.0.0.0:0              LISTENING
  TCP    127.0.0.1:51782        0.0.0.0:0              LISTENING
  TCP    127.0.0.1:55447        127.0.0.1:55448        ESTABLISHED
  TCP    127.0.0.1:55448        127.0.0.1:55447        ESTABLISHED
  TCP    192.168.31.200:139     0.0.0.0:0              LISTENING
  TCP    192.168.31.200:7680    192.168.31.140:52171   TIME_WAIT
  TCP    192.168.31.200:7680    192.168.31.140:52174   TIME_WAIT
  TCP    192.168.31.200:7680    192.168.31.140:60827   TIME_WAIT
  TCP    192.168.31.200:7680    192.168.31.140:65283   ESTABLISHED
  TCP    192.168.31.200:7680    192.168.31.207:58050   TIME_WAIT
  TCP    192.168.31.200:7680    192.168.31.207:58053   TIME_WAIT
  TCP    192.168.31.200:7680    192.168.31.207:60597   TIME_WAIT
  TCP    192.168.31.200:50060   142.250.147.188:5228   ESTABLISHED
  TCP    192.168.31.200:53948   192.168.31.207:7680    ESTABLISHED
  TCP    192.168.31.200:56407   172.217.113.4:443      TIME_WAIT
  TCP    192.168.31.200:60313   34.160.81.0:443        TIME_WAIT
  TCP    192.168.31.200:61549   35.190.80.1:443        ESTABLISHED
  TCP    192.168.31.200:63030   52.110.19.2:443        ESTABLISHED
  TCP    192.168.31.200:63037   172.211.123.250:443    ESTABLISHED
  TCP    192.168.31.200:63044   52.110.19.2:443        ESTABLISHED
  TCP    192.168.56.1:139       0.0.0.0:0              LISTENING
  TCP    [::]:135               [::]:0                 LISTENING
  TCP    [::]:445               [::]:0                 LISTENING
  TCP    [::]:7680              [::]:0                 LISTENING
  TCP    [::]:49664             [::]:0                 LISTENING
  TCP    [::]:49665             [::]:0                 LISTENING
  TCP    [::]:49668             [::]:0                 LISTENING
  TCP    [::]:49669             [::]:0                 LISTENING
  TCP    [::]:49670             [::]:0                 LISTENING
  TCP    [::]:49682             [::]:0                 LISTENING
  TCP    [::1]:42050            [::]:0                 LISTENING
  TCP    [::1]:49673            [::]:0                 LISTENING
  UDP    0.0.0.0:123            *:*
  UDP    0.0.0.0:5050           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5355           *:*
  UDP    0.0.0.0:52812          142.251.127.84:443
  UDP    0.0.0.0:61480          142.250.130.94:443
  UDP    0.0.0.0:62269          142.250.120.95:443
  UDP    0.0.0.0:64485          142.251.150.119:443
  UDP    0.0.0.0:65520          142.250.120.95:443
  UDP    127.0.0.1:1900         *:*
  UDP    127.0.0.1:55361        *:*
  UDP    127.0.0.1:60132        127.0.0.1:60132
  UDP    192.168.31.200:137     *:*
  UDP    192.168.31.200:138     *:*
  UDP    192.168.31.200:1900    *:*
  UDP    192.168.31.200:55360   *:*
  UDP    192.168.56.1:137       *:*
  UDP    192.168.56.1:138       *:*
  UDP    192.168.56.1:1900      *:*
  UDP    192.168.56.1:55359     *:*
  UDP    [::]:123               *:*
  UDP    [::]:5353              *:*
  UDP    [::]:5353              *:*
  UDP    [::]:5353              *:*
  UDP    [::]:5355              *:*
  UDP    [::1]:1900             *:*
  UDP    [::1]:55358            *:*
  UDP    [fe80::a83:af0e:94ad:f1f2%9]:1900  *:*
  UDP    [fe80::a83:af0e:94ad:f1f2%9]:55357  *:*
  UDP    [fe80::f044:9d85:dbe5:8e47%6]:1900  *:*
  UDP    [fe80::f044:9d85:dbe5:8e47%6]:55356  *:*

## 9–11. Скрипт lab.sh
(скріншот дерева каталогів, вивід перевірки email)
<img width="296" height="218" alt="image" src="https://github.com/user-attachments/assets/c2d1e5ac-70bb-4efa-a810-c0595699ba95" />
<img width="486" height="29" alt="image" src="https://github.com/user-attachments/assets/eaef251b-8551-4339-bb4c-48ba124de0b2" />
## 12. GitHub
(скріншот зеленої галочки Actions)

## 13. Помилки 404
(кількість та вивід)
<img width="1897" height="872" alt="image" src="https://github.com/user-attachments/assets/75a5af16-6a04-432a-a705-079d86b6ce1a" />

## Висновок
У ході лабораторної роботи №10 опановано мережеву діагностику в консолі (, , , ) та написання автоматизаційних Bash-скриптів. Завдання за варіантом №18 виконано у повному обсязі.
