| Name           | NRP        | Kelas     |
| ---            | ---        | ----------|
|  |  |  |

> [!IMPORTANT]
> Remember to use the IP prefix allocation provided earlier for this pre-lab assignment (pra-praktikan) and for future ones.
> Access it on [Linktree](https://linktr.ee/jarkom)

> [!TIP]
> **Due Date : `5th November 2026, 23.00 WIB`**

#### Put your GNS3 Project files here (gdrive or github upload)!

`Put file URL here`

---

# Bagian A - Reliable Data Transfer pada Kondisi Normal

## A.3 - Persiapan Topologi
 
> Langkah kerja, topologi, dan persiapan konfigurasi network (Pre-Praktikum). Seluruh pengujian pada Bagian A - D menggunakan topologi yang sama.
>
> *Work steps, topology, and network configuration preparation (Pre-Practicum). All tests in Parts A - D use the same topology.*
 
#### Soal A.3.1 - Topologi GNS3
 
> Buat topologi sesuai gambar dan tabel pemetaan node.
>
> *Build the topology according to the figure and the node mapping table.*
 
**Answer:**
 
```
put your screenshot of GNS3 topology here
```
 
#### Soal A.3.2 - Konfigurasi IP / Network & Static Routing
 
> Tunjukkan konfigurasi `/etc/network/interfaces` tiap router (RhodesIsland, Lungmen, Ursus), command `ip route add` (dapat dikonfigurasikan otomatis melalui `init.sh`), hasil `ip route show` pada ketiga router, serta bukti ping antara Victoria dan Yan.
>
> *Show the `/etc/network/interfaces` config of each router (RhodesIsland, Lungmen, Ursus), the `ip route add` commands (can be automated through `init.sh`), the `ip route show` output on all three routers, and proof of ping between Victoria and Yan.*
 
**Answer:**
 
```
put your answer here (and screenshot)
```
 
#### Soal A.3.3 - NAT dan DNS
 
> Tunjukkan aturan `iptables` MASQUERADE pada RhodesIsland (`-s [IP Prefix].0.0/16 -o eth0`), `nameserver 8.8.8.8` pada `/etc/resolv.conf` di semua node, dan bukti semua node (RhodesIsland, Lungmen, Ursus, Victoria, Yan) dapat `ping google.com`.
>
> *Show the `iptables` MASQUERADE rule on RhodesIsland (`-s [IP Prefix].0.0/16 -o eth0`), `nameserver 8.8.8.8` in `/etc/resolv.conf` on all nodes, and proof that all nodes (RhodesIsland, Lungmen, Ursus, Victoria, Yan) can `ping google.com`.*
 
**Answer:**
 
```
put your answer here (and screenshot)
```
 
#### Soal A.3.4 - DHCP Server (kea-dhcp4) pada Yan dan Victoria
 
> Tunjukkan `/etc/kea/kea-dhcp4.conf` pada Yan (termasuk reservasi Laterano `[IP Prefix].4.15`) dan Victoria menggunakan kea-dhcp4 (bukan udhcpd), bukti `kea-dhcp4` berjalan, serta bukti lease client (`udhcpc -i eth0` dan `ip -br addr`) pada Laterano dan Columbia.
>
> *Show `/etc/kea/kea-dhcp4.conf` on Yan (including the Laterano reservation `[IP Prefix].4.15`) and Victoria using kea-dhcp4 (not udhcpd), proof that `kea-dhcp4` is running, plus client lease evidence (`udhcpc -i eth0` and `ip -br addr`) on Laterano and Columbia.*
 
**Answer:**
 
```
put your answer here (and screenshot)
```
 
#### Soal A.3.5 - HTTP Server pada Laterano
 
> Pastikan Yan dan Laterano terhubung ke internet dan python3 sudah terpasang di Laterano (seperti modul 2). Tunjukkan `/root/myscripts/start_http.sh` yang dijalankan di tmux (split window) serta pembuatan berkas uji dengan `dd` (`tes1000.bin`, `tes10000.bin`, `tes50000.bin`, `tes5M.bin`).
>
> *Make sure Yan and Laterano can access the internet and python3 is installed on Laterano (as in module 2). Show `/root/myscripts/start_http.sh` running in tmux (split window) and the creation of the test files with `dd` (`tes1000.bin`, `tes10000.bin`, `tes50000.bin`, `tes5M.bin`).*
 
**Answer:**
 
```
put your answer here (and screenshot)
```
 
#### Soal A.3.6 - Verifikasi Awal dari Columbia
 
> Dari Columbia (VNC/xterm), tunjukkan lease DHCP dari Victoria, `ping` ke `[IP Prefix].4.15`, dan Firefox ke `http://[IP Prefix].4.15:9999` yang menampilkan seluruh berkas uji pada listing.
>
> *From Columbia (VNC/xterm), show the DHCP lease from Victoria, `ping` to `[IP Prefix].4.15`, and Firefox at `http://[IP Prefix].4.15:9999` listing all the test files.*
 
**Answer:**
 
```
put your answer here (and screenshot)
```

## Problem A.4 - Three-Way Handshake

> [!NOTE]
> Skenario 1: tanpa gangguan `tc/netem` pada eth1 dan eth2 RhodesIsland. Download `tes10000.bin` dari Columbia ke Laterano (port 9999). Capture Wireshark di **Columbia** dan **Laterano** dengan filter `tcp.port == 9999`.
>
> *Scenario 1: no `tc/netem` disruption on eth1 and eth2 of RhodesIsland. Download `tes10000.bin` from Columbia to Laterano (port 9999). Capture with Wireshark on **Columbia** and **Laterano** using the filter `tcp.port == 9999`.*

 
#### Soal A.4.1 - Persiapan & Prediksi
 
> Pastikan tidak ada qdisc gangguan (`tc qdisc show`/`tc qdisc del`). Tuliskan **prediksi** ISN client pada paket SYN sebelum melihat capture.
>
> *Make sure no disruptive qdisc is active. Write your **prediction** of the client's ISN in the SYN packet before looking at the capture.*
 
**Answer:**
 
```
Prediksi saya: ...
 
put screenshot of tc qdisc show eth1 / eth2 here
```
 
#### Soal A.4.2 - Tabel Observasi Three-Way Handshake

> [!NOTE]
> Untuk parameter 6-8 gunakan capture **Laterano**; untuk 9-10 gunakan capture **Columbia**.
>
> *For items 6-8, use the **Laterano** capture; for 9-10, use the **Columbia** capture.*
 
> Isi tabel berikut berdasarkan capture Wireshark.
>
> *Fill in the following table based on the Wireshark capture.*
 
| No | Parameter/Aspek | Field Wireshark | Instruksi / *Instruction* | Jawaban & Screenshot |
| --- | --- | --- | --- | --- |
| 1 | IP sumber dan tujuan<br>*Source and destination IP* | `ip.src`, `ip.dst` | Pastikan koneksi terjadi antara client (pengirim request) dan server (penerima request).<br>*Make sure the connection is between the client (request sender) and the server (request receiver).* | put your answer here (and screenshot) |
| 2 | Proses handshake (3 paket awal)<br>*Handshake process (first 3 packets)* | `tcp.flags.syn`, `tcp.flags.ack` | Amati tiga paket pertama: SYN → SYN-ACK → ACK.<br>*Observe the first three packets: SYN → SYN-ACK → ACK.* | put your answer here (and screenshot) |
| 3 | Prediksi vs aktual: sequence number awal client<br>*Predicted vs actual: client's initial sequence number* | `tcp.seq` (SYN) | Bandingkan prediksi sebelum capture dengan nilai aktual, jelaskan mengapa ISN acak, bukan nol.<br>*Compare your prediction before the capture with the actual value, and explain why the ISN is random, not zero.* | put your answer here (and screenshot) |
| 4 | Sequence number awal server<br>*Server's initial sequence number* | `tcp.seq` (SYN-ACK) | Tunjukkan byte awal dari sisi server.<br>*Show the initial byte on the server side.* | put your answer here (and screenshot) |
| 5 | ACK setelah handshake<br>*ACK after the handshake* | `tcp.ack` | Tunjukkan bahwa client mengonfirmasi SYN-ACK dari server.<br>*Show that the client acknowledges the server's SYN-ACK.* | put your answer here (and screenshot) |
| 6 | Verifikasi SEQ segmen berikutnya = SEQ + panjang payload<br>*Verify next segment's SEQ = SEQ + payload length* | `tcp.seq`, `tcp.len` | Pilih satu segmen data di tengah stream (bukan segmen pertama atau terakhir), lalu buktikan secara manual bahwa segmen berikutnya memiliki `tcp.seq` = `tcp.seq` + `tcp.len` segmen ini.<br>*Choose a data segment in the middle of the stream (not the first or last), then manually prove that the next segment has `tcp.seq` = this segment's `tcp.seq` + `tcp.len`.* | `tcp.seq` segmen ini: ...<br>`tcp.len` segmen ini: ...<br>`tcp.seq` berikutnya: ...<br>Perhitungan: ... + ... = ...<br>put screenshot here |
| 7 | Pola ACK penerima<br>*Receiver's ACK pattern* | `tcp.ack` | Tunjukkan bahwa ACK bertambah kumulatif, menandakan data diterima secara berurutan.<br>*Show that ACKs increase cumulatively, indicating that data is received in order.* | put your answer here (and screenshot) |
| 8 | RTT rata-rata dan implikasinya terhadap timer<br>*Average RTT and its effect on the timer* | `tcp.analysis.ack_rtt` | Catat RTT pada salah satu ACK (di Laterano), lalu diskusikan mengapa timer yang terlalu pendek maupun terlalu panjang sama-sama bermasalah bagi kinerja transfer.<br>*Record the RTT from one ACK (on Laterano), then discuss why a timer that is too short and one that is too long both cause transfer performance problems.* | put your answer here (and screenshot) |
| 9 | Status retransmisi<br>*Retransmission status* | `tcp.analysis.retransmission` | Semestinya tidak ada retransmisi, menandakan link sehat.<br>*There should be no retransmissions, indicating a healthy link.* | put your answer here (and screenshot) |
| 10 | Pola penutupan koneksi<br>*Connection closing pattern* | `tcp.flags.fin`, `tcp.flags.ack` | Tunjukkan bahwa TCP menutup koneksi melalui four-way handshake (FIN/ACK).<br>*Show that TCP closes the connection through a four-way handshake (FIN/ACK).* | put your answer here (and screenshot) |

#### A.4.2 - Pertanyaan Analisis / Refleksi

> 1. Apa fungsi utama sequence number dan acknowledgment number dalam TCP?
>    *What are the main functions of sequence numbers and acknowledgment numbers in TCP?*
>
> 2. Mengapa ACK pada TCP bersifat kumulatif, bukan per-paket?
>    *Why are TCP ACKs cumulative rather than per-packet?*
>
> 3. Apa yang akan terjadi jika salah satu segmen data hilang di tengah pengiriman?
>    *What will happen if a data segment is lost in the middle of a transfer?*
>
> 4. Apa bukti dari hasil Wireshark bahwa TCP berhasil melakukan transfer data secara reliable?
>    *What evidence in the Wireshark results shows that TCP successfully transfers data reliably?*

**Answer:**

```
put your answers here
```

---

# Bagian B - Retransmission & Duplicate ACK

> [!NOTE]
> Skenario 2: packet loss 1% pada eth1 dan eth2 RhodesIsland. Download `tes5M.bin`. Untuk parameter 2 dan 5 gunakan capture **Columbia**; selain itu gunakan capture **Laterano**.
>
> *Scenario 2: 1% packet loss on eth1 and eth2 of RhodesIsland. Download `tes5M.bin`. For items 2 and 5, use the **Columbia** capture; for the others, use the **Laterano** capture.*

## Problem B.1 - B.3
 
#### Soal B.1 - Persiapan Gangguan & Prediksi
 
> Terapkan `tc qdisc add dev eth1/eth2 root netem loss 1%`. Tuliskan prediksi reaksi penerima terhadap loss sebelum melihat capture.
>
> *Apply `tc qdisc add dev eth1/eth2 root netem loss 1%`. Write your prediction of the receiver's reaction to loss before looking at the capture.*
 
**Answer:**
 
```
Prediksi saya: ...
 
put screenshot of tc qdisc show eth1 / eth2 here
```
 
#### Soal B.3 - Tabel Observasi Retransmisi & Duplicate ACK
 
> Isi tabel berikut berdasarkan capture Wireshark dan output `curl`.
>
> *Fill in the following table based on the Wireshark capture and the `curl` output.*
 
| No | Parameter/Aspek | Field Wireshark | Instruksi / *Instruction* | Jawaban & Screenshot |
| --- | --- | --- | --- | --- |
| 1 | Persentase loss yang disimulasikan<br>*Simulated loss percentage* | `tc qdisc show` | Tunjukkan nilai setup packet loss (1%) pada `tc netem`.<br>*Show the packet loss setting (1%) in `tc netem`.* | put your answer here (and screenshot) |
| 2 | Prediksi vs aktual: reaksi penerima terhadap loss (Columbia)<br>*Predicted vs actual: receiver's response to loss (Columbia)* | `tcp.analysis.duplicate_ack` | Bandingkan prediksi dengan pola dupACK aktual (ACK bernomor sama berulang), bukan NAK.<br>*Compare your prediction with the actual dupACK pattern (repeated ACKs with the same number), not NAK.* | put your answer here (and screenshot) |
| 3 | Jumlah retransmisi<br>*Number of retransmissions* | `tcp.analysis.retransmission` | Tunjukkan paket yang dikirim ulang akibat tidak menerima ACK yang diharapkan.<br>*Show the packets sent again because the expected ACK was not received.* | put your answer here (and screenshot) |
| 4 | Verifikasi SEQ segmen retransmisi = SEQ segmen asli yang hilang<br>*Verify retransmitted segment's SEQ = original lost segment's SEQ* | `tcp.seq`, `tcp.len` | Bandingkan paket `tcp.analysis.retransmission` dengan segmen aslinya, buktikan bahwa retransmisi mengirim ulang byte yang identik, bukan data baru.<br>*Compare a `tcp.analysis.retransmission` packet with its original segment, and prove that the retransmission sends the same bytes again, not new data.* | Segmen asli: seq = ..., len = ...<br>Retransmisi: seq = ..., len = ...<br>put screenshot here |
| 5 | Jumlah duplicate ACK (Columbia)<br>*Number of duplicate ACKs (Columbia)* | `tcp.analysis.duplicate_ack` | Tunjukkan bahwa sedikitnya 3 dupACK berturut-turut memicu fast retransmit.<br>*Show that at least 3 consecutive dupACKs trigger fast retransmit.* | put your answer here (and screenshot) |
| 6 | RTT sebelum dan sesudah loss<br>*RTT before and after loss* | `tcp.analysis.ack_rtt` | Tunjukkan bahwa RTT cenderung meningkat karena waktu recovery.<br>*Show that RTT tends to increase because of recovery time.* | put your answer here (and screenshot) |
| 7 | Fast retransmit terdeteksi beserta selisih waktunya<br>*Detected fast retransmit and its time difference* | `tcp.analysis.fast_retransmission`, `frame.time_relative` | Ukur selisih waktu antara dupACK ke-3 dan retransmisi yang menyusul, bandingkan dengan potensi timeout.<br>*Measure the time between the third dupACK and the retransmission that follows, and compare it with a possible timeout.* | put your answer here (and screenshot) |
| 8 | Timeout retransmission<br>*Timeout retransmission* | `frame.time_relative` | Terjadi bila tidak ada dupACK yang memicu fast retransmit. Jika tidak muncul, jelaskan apa yang diamati beserta alasannya.<br>*Occurs when there are no dupACKs to trigger fast retransmit. If it does not appear, describe what was observed and why.* | put your answer here (and screenshot) |
| 9 | Throughput rata-rata<br>*Average throughput* | `curl -w` (`speed_download`) | Bandingkan dengan throughput pada Skenario 1 (tanpa loss).<br>*Compare with the throughput in Scenario 1 (without loss).* | put your answer here (and screenshot) |
| 10 | Lama transfer total<br>*Total transfer duration* | `curl -w` (`time_total`) | Tunjukkan bahwa waktu transfer meningkat dibanding Skenario 1.<br>*Show that the transfer time increases compared with Scenario 1.* | put your answer here (and screenshot) |
| 11 | Pola congestion window (perkiraan)<br>*Congestion window pattern (estimate)* | `tcp.analysis.bytes_in_flight` | Tunjukkan bahwa cwnd menurun setelah loss, indikasi congestion control aktif.<br>*Show that cwnd decreases after loss, indicating that congestion control is active.* | put your answer here (and screenshot) |

#### B.3 - Pertanyaan Analisis / Refleksi

> 1. Bagaimana TCP mengetahui bahwa sebuah segmen hilang?
>    *How does TCP know that a segment is lost?*
>
> 2. Jelaskan perbedaan antara timeout retransmission dan fast retransmit.
>    *Explain the difference between timeout retransmission and fast retransmit.*
>
> 3. Mengapa throughput menurun saat terjadi packet loss?
>    *Why does throughput decrease when packet loss occurs?*
>
> 4. Bagaimana Wireshark menunjukkan bahwa TCP tetap reliable meskipun terjadi packet loss?
>    *How does Wireshark show that TCP remains reliable even when packet loss occurs?*

**Answer:**

```
put your answers here
```

---

# Bagian C - TCP Congestion Control (CUBIC vs Reno)

> [!NOTE]
> Skenario 3: loss 1%, delay 100 ms, rate limit 2 Mbps (tbf + netem) pada eth1 dan eth2 RhodesIsland. Algoritma diatur di **Laterano** (sender). Download `tes5M.bin`. Untuk parameter 4, 5, dan 9 gunakan capture **Columbia**; selain itu gunakan capture **Laterano**. Jangan klaim mengukur cwnd secara langsung dari grafik Time-Sequence / `bytes_in_flight`.
>
> *Scenario 3: 1% loss, 100 ms delay, 2 Mbps rate limit (tbf + netem) on eth1 and eth2 of RhodesIsland. The algorithm is set on **Laterano** (sender). Download `tes5M.bin`. For items 4, 5, and 9 use the **Columbia** capture; for the others use the **Laterano** capture. Do not claim to measure cwnd directly from the Time-Sequence graph / `bytes_in_flight`.*

## Problem C.1 - C.3

#### Soal C.1 - Setup Gangguan & Prediksi Kurva cwnd

> Tunjukkan konfigurasi `tc` (tbf + netem). Tuliskan prediksi bentuk kurva cwnd untuk Reno dan CUBIC sebelum melihat grafik.
>
> *Show the `tc` configuration (tbf + netem). Write your predicted cwnd curve shape for Reno and CUBIC before looking at the actual graphs.*

**Answer:**

```
Prediksi Reno  : ...
Prediksi CUBIC : ...

put screenshot of tc qdisc show eth1 / eth2 here
```

#### Soal C.2 - Konfigurasi Algoritma Congestion Control
 
> Atur algoritma di Laterano (sender) lalu jalankan download `tes5M.bin` dari Columbia untuk masing-masing algoritma.
>
> *Set the algorithm on Laterano (sender), then download `tes5M.bin` from Columbia for each algorithm.*
 
| Langkah / *Step* | CUBIC | Reno |
| --- | --- | --- |
| Command di Laterano<br>*Command on Laterano* | `ip tcp_metrics flush`<br>`sysctl -w net.ipv4.tcp_no_metrics_save=1`<br>`sysctl -w net.ipv4.tcp_congestion_control=cubic`<br>`sysctl net.ipv4.tcp_congestion_control` | `sysctl -w net.ipv4.tcp_congestion_control=reno`<br>`ip tcp_metrics flush`<br>`sysctl net.ipv4.tcp_congestion_control` |
| Command di Columbia<br>*Command on Columbia* | `curl ... tes5M.bin` (sama seperti Skenario 1 dan 2 / *same as Scenarios 1 and 2*) | `curl ... tes5M.bin` (sama seperti CUBIC / *same as CUBIC*) |
| Screenshot | put screenshot here | put screenshot here |
 
#### Soal C.3 - Tabel Perbandingan CUBIC vs Reno
 
> Isi tabel berikut dengan hasil aktual untuk CUBIC dan Reno (nilai + screenshot), lalu tulis analisis singkat pada kolom catatan.
> Setiap sel kosong untuk CUBIC dan RENO pada tabel di bawah **wajib** berisi **nilai aktual** dan **screenshot** sebagai bukti, kecuali parameter nomor 1.
>
> *Fill in the following table with actual results for CUBIC and Reno (value + screenshot), then write a short analysis in the notes column.*
> *Every cell for CUBIC and RENO column in the table below **must** contain the **actual value** and a **screenshot** as evidence, except for parameter 1.*
 
| No | Parameter/Aspek | Field Wireshark / Command | CUBIC | Reno | Catatan analisis / *Analysis notes* |
| --- | --- | --- | --- | --- | --- |
| 1 | Prediksi vs aktual: bentuk kurva cwnd<br>*Predicted vs actual: cwnd curve shape* | Time - Sequence Graph | put your answer here (and screenshot) | put your answer here (and screenshot) | Cocokkan dugaan awal dengan kurva aktual; jelaskan bila berbeda.<br>*Match your initial prediction with the actual curve; explain any differences.* |
| 2 | RTT rata-rata (ms)<br>*Average RTT (ms)* | `tcp.analysis.ack_rtt` | | | RTT stabil menunjukkan congestion control yang efisien.<br>*A stable RTT indicates efficient congestion control.* |
| 3 | RTT maksimum (ms)<br>*Maximum RTT (ms)* | `tcp.analysis.ack_rtt` | | | RTT tinggi mengindikasikan queue buildup pada jalur.<br>*A high RTT indicates queue buildup along the path.* |
| 4 | Throughput (B/s) (Columbia)<br>*Throughput (B/s) (Columbia)* | `curl -w` (`speed_download`) | | | |
| 5 | Waktu transfer total (s) (Columbia)<br>*Total transfer time (s) (Columbia)* | `curl -w` (`time_total`) | | | |
| 6 | Jumlah retransmisi<br>*Number of retransmissions* | `tcp.analysis.retransmission` | | | Retransmisi yang banyak mengindikasikan algoritma bersifat loss-based.<br>*Many retransmissions indicate a loss-based algorithm.* |
| 7 | Jumlah duplicate ACK<br>*Number of duplicate ACKs* | `tcp.analysis.duplicate_ack` | | | Indikasi segmen yang sempat hilang di tengah transfer.<br>*An indication of segments lost during the transfer.* |
| 8 | Pola congestion window (awal - akhir)<br>*Congestion window pattern (start - end)* | `tcp.analysis.bytes_in_flight` | | | Amati pertumbuhan dan stabilitas pada grafik Time - Sequence.<br>*Observe growth and stability in the Time - Sequence graph.* |
| 9 | Nilai receive window rata-rata (Columbia)<br>*Average receive window value (Columbia)* | `tcp.window_size_value` | | | Menunjukkan kapasitas buffer di sisi penerima.<br>*Shows the buffer capacity on the receiver side.* |
| 10 | Stabilitas throughput (grafik)<br>*Throughput stability (graph)* | Throughput Graph | | | Apakah throughput cenderung konstan atau berfluktuasi.<br>*Whether throughput tends to stay constant or fluctuate.* |


#### C.3 - Pertanyaan Analisis / Refleksi

> 1. Algoritma mana yang memberikan throughput lebih tinggi pada kondisi jaringan ini? Mengapa demikian?
>    *Which algorithm provides higher throughput under these network conditions? Why?*
>
> 2. Apakah ada hubungan antara jumlah retransmisi dan jenis algoritma congestion control yang digunakan?
>    *Is there a relationship between the number of retransmissions and the congestion control algorithm used?*
>
> 3. Apa perbedaan bentuk kurva congestion window antara Reno dan Cubic pada grafik Time-Sequence (Stevens)?
>    *How do the congestion window curves of Reno and Cubic differ in the Time-Sequence (Stevens) graph?*
>
> 4. Algoritma mana yang paling sensitif terhadap RTT tinggi?
>    *Which algorithm is most sensitive to high RTT?*
>
> 5. Algoritma mana yang lebih efisien pada jaringan dengan latency tinggi seperti pada skenario ini? Jelaskan.
>    *Which algorithm is more efficient on a network with high latency, as in this scenario? Explain.*

**Answer:**

```
put your answer here
```

---

# Bagian D - Verifikasi Perilaku TCP vs UDP

> [!NOTE]
> Packet loss 5% pada eth1 dan eth2 RhodesIsland. `iperf3 -s` di Laterano; client di Columbia.

## Problem D.1 - D.3

#### Soal D.1 - Setup Gangguan (`tc qdisc show`)

> Loss 5% diterapkan pada kedua interface RhodesIsland.

**Answer:**

```
put your answer here (and screenshot)
```

#### Soal D.3 - Tabel Hasil Pengujian TCP vs UDP

> Jalankan pengujian TCP lalu UDP, catat hasil sender/receiver (nilai + screenshot), lalu bandingkan. Kesimpulan harus didasarkan pada hasil pengukuran yang setara.
> Setiap sel kosong pada tabel di bawah **wajib** berisi **nilai aktual** dan **screenshot** sebagai bukti.
>
> *Run the TCP test and then the UDP test, record the sender/receiver results (value + screenshot), then compare them. The conclusion must be based on comparable measurements.*
> *Every cell in the table below **must** contain the **actual value** and a **screenshot** as evidence.*
 
| Parameter | TCP | UDP |
| --- | --- | --- |
| Command di Columbia<br>*Command on Columbia* | `iperf3 -c [IP Prefix].4.15 -t 10` | `iperf3 -c [IP Prefix].4.15 -u -b 5M -t 10` |
| Bitrate/throughput sender | | |
| Bitrate/throughput receiver | | |
| Retransmission yang dilaporkan<br>*Reported retransmissions* | | Tidak ada retransmission bawaan UDP<br>*UDP has no built-in retransmission* |
| Lost / Total Datagrams | Tidak tersedia dalam format TCP<br>*Not available in TCP format* | |
| Jitter (jika tercantum)<br>*Jitter (if shown)* | — | |
| Ringkasan respons terhadap loss<br>*Summary of the response to loss* | | |
| Screenshot output iperf3 | put screenshot here | put screenshot here |


#### D.3 - Pertanyaan Analisis / Refleksi

> 1. Mengapa hasil iperf3 mode UDP menampilkan persentase datagram loss, sedangkan hasil mode TCP tidak?
>    *Why do the iperf3 UDP results show the percentage of datagram loss, while the TCP results do not?*
>
> 2. Mengapa throughput UDP tetap mendekati nilai yang diminta (`-b`) meskipun terjadi packet loss, sedangkan throughput TCP menurun?
>    *Why does UDP throughput stay close to the requested value (-b) despite packet loss, while TCP throughput decreases?*
>
> 3. Mengapa throughput TCP bisa turun pada kondisi loss, sedangkan UDP tetap mencoba mengirim sesuai target bitrate?
>    *Why can TCP throughput decrease under loss, while UDP keeps trying to send at the target bitrate?*
>
> 4. Untuk jenis aplikasi seperti apa pilihan UDP lebih tepat dibanding TCP, berdasarkan hasil pengamatan ini?
>    *Based on these observations, for what types of applications is UDP a better choice than TCP?*

**Answer:**

```
put your answers here
```

---

# Bagian E - Tugas Mandiri

> [!IMPORTANT]
> Gunakan topologi dari pengerjaan Bagian A - D sebelumnya. Isi tabel dengan **hasil aktual**, bukan angka perkiraan.
>
> *Use the topology from your earlier work in Parts A - D. Fill in the table with **actual results**, not estimated numbers.*

#### Soal E.1 - Ulangi Skenario 1 untuk Tiga Ukuran Berkas

> Ulangi Skenario 1 (tanpa gangguan) untuk `tes1000.bin`, `tes10000.bin`, dan `tes5M.bin`, lalu lengkapi tabel berikut berdasarkan capture Wireshark di Laterano dan Columbia serta output `curl`.
> Setiap sel kosong pada tabel di bawah **wajib** berisi **nilai aktual** dan **screenshot** sebagai bukti.
>
> *Repeat Scenario 1 for the three file sizes and complete the table using the Wireshark captures from Laterano and Columbia and the `curl` output.*
> *Every cell in the table below **must** contain the **actual value** and a **screenshot** as evidence.*
 
**Tabel Observasi Kondisi Normal**
 
| No | Parameter/Aspek | Field Wireshark | tes1000.bin | tes10000.bin | tes5M.bin |
| --- | --- | --- | --- | --- | --- |
| 1 | Ukuran berkas (B)<br>*File size (B)* | - | | | |
| 2 | Jumlah total segmen TCP<br>*Total number of TCP segments* | Statistics Conversations TCP | | | |
| 3 | RTT rata-rata (Laterano)<br>*Average RTT (Laterano)* | `tcp.analysis.ack_rtt` | | | |
| 4 | Throughput (curl) | `speed_download` | | | |
| 5 | Waktu total transfer (curl)<br>*Total transfer time (curl)* | `time_total` | | | |
| 6 | Sequence number awal client<br>*Client's initial sequence number* | `tcp.seq` (SYN) | | | |
| 7 | Sequence number awal server<br>*Server's initial sequence number* | `tcp.seq` (SYN-ACK) | | | |
| 8 | Jumlah ACK yang dikirim client<br>*Number of ACKs sent by the client* | Statistics Endpoints TCP | | | |
| 9 | Status retransmisi (Laterano)<br>*Retransmission status (Laterano)* | `tcp.analysis.retransmission` | | | |
| 10 | Screenshot | Wireshark / curl | put screenshot here | put screenshot here | put screenshot here |


#### E.2 - Pertanyaan Kesimpulan

> 1. Apakah jumlah segmen TCP, RTT, dan throughput berubah secara proporsional terhadap ukuran berkas?
>    *Do the number of TCP segments, RTT, and throughput change in proportion to file size?*
>
> 2. Parameter mana yang relatif tetap tidak bergantung pada ukuran berkas, dan mengapa demikian?
>    *Which parameters stay relatively constant regardless of file size, and why?*
>
> 3. Apa perbedaan antara total waktu download yang diukur curl dengan RTT paket TCP?
>    *What is the difference between the total download time measured by curl and TCP packet RTT?*
>

**Answer:**

```
put your answers here
```
