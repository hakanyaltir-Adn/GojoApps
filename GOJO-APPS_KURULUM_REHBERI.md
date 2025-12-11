# 🚀 gojo-apps.com Domain Kurulum Rehberi

**Domain:** gojo-apps.com (GoDaddy)  
**Hedef:** GitHub Pages (GojoApps Repository)  
**Tahmini Süre:** 10-15 dakika + DNS Yayılma (24-48 saat)

---

## 📌 Durum Özeti

✅ **Yapıldı:**
- CNAME dosyası güncellendi (`gojo-apps.com`)

⏳ **Yapılacak:**
1. Git değişikliklerini push et
2. GitHub Pages ayarlarını yap
3. GoDaddy DNS ayarlarını yap
4. DNS yayılmasını bekle
5. HTTPS'i aktif et

---

## 🔧 ADIM 1: Git Değişikliklerini Push Et (Şimdi)

Terminal'de şu komutları çalıştırın:

```bash
cd /Users/hakanyaltir/Desktop/gojoapps

# CNAME dosyasını commit et
git add CNAME
git commit -m "Update CNAME to gojo-apps.com"

# GitHub'a push et
git push origin main
```

**Beklenen sonuç:** ✅ "CNAME dosyası başarıyla push edildi"

---

## 🌐 ADIM 2: GitHub Pages Ayarları (Şimdi)

### 2.1 GitHub Repository'ye Git
1. Tarayıcıda açın: https://github.com/hakanyaltir-Adn/GojoApps
2. **Settings** sekmesine tıklayın
3. Sol menüden **Pages** seçin

### 2.2 Custom Domain Ayarla
1. **Custom domain** alanını bulun
2. `gojo-apps.com` yazın
3. **Save** butonuna tıklayın

### 2.3 DNS Kontrolü
GitHub otomatik DNS kontrolü yapacak. Şu mesajı görebilirsiniz:
> ⚠️ "DNS check in progress..."

**Bu normaldir!** DNS ayarlarını yaptıktan sonra bu kontrol başarılı olacak.

**HENÜZ "Enforce HTTPS" seçeneğini işaretlemeyin!** (DNS yayıldıktan sonra)

---

## 🔐 ADIM 3: GoDaddy DNS Ayarları (Şimdi - En Önemli Adım!)

### 3.1 GoDaddy'ye Giriş Yapın

1. https://www.godaddy.com adresine gidin
2. Hesabınıza giriş yapın
3. **My Products** → **Domains** bölümüne gidin
4. `gojo-apps.com` domain'inizin yanındaki **DNS** butonuna tıklayın

---

### 3.2 Mevcut A Records'ları SİLİN

**Önemli:** Önce eski kayıtları temizleyin!

GoDaddy parking page kayıtlarını silin:
- Mevcut A Record'lar (genellikle GoDaddy IP'leri)
- Type: **A**, Name: **@** olanları bulun ve **silin** (çöp kutusu ikonu)

**SAKLAYIN:**
- ✅ NS Records (Name Servers)
- ✅ SOA Record

---

### 3.3 YENİ A Records Ekleyin

**Add** butonuna tıklayarak şu 4 A Record'u ekleyin:

#### Record 1:
- **Type:** A
- **Name:** @
- **Value:** `185.199.108.153`
- **TTL:** 600 seconds (veya Custom: 600)

#### Record 2:
- **Type:** A
- **Name:** @
- **Value:** `185.199.109.153`
- **TTL:** 600 seconds

#### Record 3:
- **Type:** A
- **Name:** @
- **Value:** `185.199.110.153`
- **TTL:** 600 seconds

#### Record 4:
- **Type:** A
- **Name:** @
- **Value:** `185.199.111.153`
- **TTL:** 600 seconds

**Her birini ekledikten sonra Save/Add butonuna tıklayın!**

---

### 3.4 CNAME Record Ekleyin (www için)

**Add** butonuna tıklayın:

- **Type:** CNAME
- **Name:** www
- **Value:** `hakanyaltir-adn.github.io`
- **TTL:** 600 seconds

**Save** yapın.

---

### 3.5 Final DNS Tablosu (Böyle Görünmeli)

| Type | Name | Value | TTL |
|------|------|-------|-----|
| A | @ | 185.199.108.153 | 600 |
| A | @ | 185.199.109.153 | 600 |
| A | @ | 185.199.110.153 | 600 |
| A | @ | 185.199.111.153 | 600 |
| CNAME | www | hakanyaltir-adn.github.io | 600 |
| NS | @ | ns**.domaincontrol.com | 1 Hour |
| SOA | @ | ... | 1 Hour |

**AAAA Record'lar varsa onları da silin!** (IPv6)

---

## ⏱️ ADIM 4: DNS Yayılmasını Bekleyin (5 dakika - 48 saat)

DNS değişiklikleri dünya genelinde yayılana kadar beklemeniz gerekiyor.

### 4.1 DNS Kontrolü (Terminal)

Terminal'de şu komutu çalıştırın:

```bash
# Her 5 dakikada bir kontrol edin
dig gojo-apps.com +short
```

**Beklenen sonuç:**
```
185.199.108.153
185.199.109.153
185.199.110.153
185.199.111.153
```

Eğer hala eski IP'leri görüyorsanız, biraz daha bekleyin.

---

### 4.2 Online DNS Checker

Tarayıcıda açın:
- https://www.whatsmydns.net/ → `gojo-apps.com` arayın
- https://dnschecker.org/ → `gojo-apps.com` test edin

Dünya genelinde yeşil ✓ işaretlerini bekleyin.

---

### 4.3 WWW Kontrolü

```bash
dig www.gojo-apps.com +short
```

**Beklenen sonuç:**
```
hakanyaltir-adn.github.io.
185.199.108.153
185.199.109.153
185.199.110.153
185.199.111.153
```

---

## ✅ ADIM 5: GitHub Pages DNS Doğrulaması (DNS yayıldıktan sonra)

### 5.1 GitHub Pages'e Dön

1. https://github.com/hakanyaltir-Adn/GojoApps
2. **Settings** → **Pages**

### 5.2 DNS Kontrolünü Bekleyin

Şu mesajı görmelisiniz:
> ✅ "DNS check successful"

Veya yeşil bir onay işareti.

**Eğer hata görüyorsanız:**
- 1-2 saat daha bekleyin
- DNS ayarlarınızı tekrar kontrol edin

---

## 🔒 ADIM 6: HTTPS/SSL Aktif Et (DNS başarılı olduktan sonra)

### 6.1 Enforce HTTPS

GitHub Pages → Settings → Pages:
1. ✅ **Enforce HTTPS** kutusunu işaretleyin
2. GitHub otomatik SSL sertifikası oluşturacak (Let's Encrypt)
3. Bu işlem ~15 dakika - 1 saat sürebilir

### 6.2 HTTPS Kontrolü

```bash
curl -I https://gojo-apps.com
```

**Beklenen başlık:**
```
HTTP/2 200
server: GitHub.com
```

---

## 🎯 ADIM 7: Test ve Doğrulama

### 7.1 Tarayıcıda Test

Şu URL'leri açın:

1. **http://gojo-apps.com** → `https://gojo-apps.com` yönlenmeli ✅
2. **https://gojo-apps.com** → Ana sayfa açılmalı ✅
3. **www.gojo-apps.com** → `https://gojo-apps.com` yönlenmeli ✅
4. **https://gojo-apps.com/apps/kids-habit-builder/** → Uygulama açılmalı ✅
5. **https://gojo-apps.com/apps/kids-habit-builder/privacy.html** → Privacy sayfası ✅

### 7.2 SSL Kontrolü

Tarayıcıda `https://gojo-apps.com` açın:
- Adres çubuğunda **kilit ikonu** ✅
- "Bağlantı güvenli" mesajı ✅
- Sertifika: Let's Encrypt ✅

---

## 📝 Özet Checklist

İşaretleyin:

- [ ] **1. CNAME dosyası push edildi** (`git push`)
- [ ] **2. GitHub Pages custom domain ayarlandı** (`gojo-apps.com`)
- [ ] **3. GoDaddy'de 4 A Record eklendi** (GitHub IPs)
- [ ] **4. GoDaddy'de www CNAME eklendi**
- [ ] **5. Eski DNS kayıtları silindi** (parking page IPs)
- [ ] **6. DNS yayılması tamamlandı** (dig komutu ile test)
- [ ] **7. GitHub DNS check successful** ✅
- [ ] **8. HTTPS aktif edildi**
- [ ] **9. Test: https://gojo-apps.com çalışıyor** ✅
- [ ] **10. Test: Privacy.html açılıyor** ✅

---

## 🚨 Sorun Giderme

### Problem 1: "DNS check unsuccessful"

**Sebep:** DNS henüz yayılmadı.

**Çözüm:**
- 24-48 saat bekleyin
- `dig gojo-apps.com` ile test edin
- GoDaddy DNS ayarlarını tekrar kontrol edin

---

### Problem 2: "404 Not Found"

**Sebep:** CNAME dosyası push edilmemiş.

**Çözüm:**
```bash
cd /Users/hakanyaltir/Desktop/gojoapps
git status
git add CNAME
git commit -m "Update CNAME"
git push origin main
```

---

### Problem 3: HTTPS çalışmıyor

**Sebep:** DNS propagation tamamlanmamış.

**Çözüm:**
1. Enforce HTTPS'i kaldırın
2. 1-2 saat bekleyin
3. Tekrar işaretleyin

---

### Problem 4: "www" çalışmıyor

**Sebep:** CNAME Record yanlış.

**Çözüm:**
GoDaddy'de CNAME kontrol edin:
- Name: **www**
- Value: **hakanyaltir-adn.github.io** (trailing dot olmadan)

---

## 🎉 Başarılı Kurulum Sonrası

✅ **Artık şu URL'ler çalışacak:**

```
https://gojo-apps.com
https://www.gojo-apps.com (→ gojo-apps.com yönlenecek)
https://gojo-apps.com/apps/kids-habit-builder/
https://gojo-apps.com/apps/kids-habit-builder/privacy.html
```

**Eski GitHub Pages URL'i de çalışmaya devam eder:**
```
https://hakanyaltir-adn.github.io/GojoApps/
(otomatik olarak gojo-apps.com'a yönlenecek)
```

---

## 📞 Yardım

Sorun yaşarsanız:
1. Bu rehberdeki adımları tekrar kontrol edin
2. DNS propagation için 48 saat bekleyin
3. GoDaddy support ile iletişime geçin

---

## 🔗 Faydalı Linkler

- **GitHub Pages Docs:** https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site
- **GoDaddy DNS Help:** https://www.godaddy.com/help/manage-dns-680
- **DNS Checker:** https://www.whatsmydns.net/
- **SSL Test:** https://www.ssllabs.com/ssltest/

---

**Son Güncelleme:** 11 Aralık 2025  
**Hazırlayan:** GojoApps Development Team  
**Domain:** gojo-apps.com

---

## ⚡ Hızlı Başlangıç (TL;DR)

```bash
# 1. CNAME push et
cd /Users/hakanyaltir/Desktop/gojoapps
git add CNAME
git commit -m "Update CNAME to gojo-apps.com"
git push origin main

# 2. GitHub: Settings → Pages → Custom Domain: gojo-apps.com

# 3. GoDaddy: DNS ayarları yap (4 A Record + 1 CNAME)

# 4. Bekle (24-48 saat)

# 5. GitHub: Enforce HTTPS aktif et

# 6. Test: https://gojo-apps.com
```

**Başarılar! 🚀**
