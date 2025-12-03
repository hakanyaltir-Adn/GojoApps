# 🌐 GojoApps Custom Domain Kurulumu (GoDaddy → GitHub Pages)

Bu rehber, `gojoapps.com` domain'inizi GitHub Pages'e bağlamanız için adım adım talimatlar içerir.

---

## 📋 Ön Hazırlık

- ✅ Domain: `gojoapps.com` (GoDaddy'den alınmış)
- ✅ GitHub Repository: `hakanyaltir-Adn/GojoApps`
- ✅ GitHub Pages: Aktif (main branch üzerinden)

---

## 1️⃣ GitHub Repository Ayarları

### Adım 1: CNAME Dosyası Oluştur

Repository'nizin **root** dizinine `CNAME` dosyası ekleyin:

```bash
# Terminal'den:
cd /Users/hakanyaltir/Desktop/gojoapps
echo "gojoapps.com" > CNAME
git add CNAME
git commit -m "Add CNAME for custom domain"
git push origin main
```

**CNAME dosyası içeriği:**
```
gojoapps.com
```

> ⚠️ **Önemli:** CNAME dosyasında sadece domain adı olmalı, `http://` veya `https://` eklemeyin!

---

### Adım 2: GitHub Repository Settings

1. GitHub'da repository'nize gidin: `https://github.com/hakanyaltir-Adn/GojoApps`
2. **Settings** → **Pages** bölümüne gidin
3. **Custom domain** alanına `gojoapps.com` yazın
4. **Save** butonuna tıklayın
5. ✅ **Enforce HTTPS** seçeneğini işaretleyin (DNS propagation'dan sonra aktif olacak)

---

## 2️⃣ GoDaddy DNS Ayarları

### Adım 1: GoDaddy'ye Giriş Yapın

1. [GoDaddy.com](https://www.godaddy.com) → **My Products** → **Domains**
2. `gojoapps.com` domain'inizi bulun
3. **DNS** butonuna tıklayın veya **Manage DNS**

---

### Adım 2: A Records Ekleyin

Mevcut **A Record**'ları silin ve aşağıdaki **4 A Record** ekleyin:

| Type | Name | Value | TTL |
|------|------|-------|-----|
| A | @ | `185.199.108.153` | 600 seconds |
| A | @ | `185.199.109.153` | 600 seconds |
| A | @ | `185.199.110.153` | 600 seconds |
| A | @ | `185.199.111.153` | 600 seconds |

> 📌 **Not:** `@` sembolü root domain'i temsil eder (gojoapps.com)

---

### Adım 3: CNAME Record Ekleyin (www için)

`www.gojoapps.com` için CNAME ekleyin:

| Type | Name | Value | TTL |
|------|------|-------|-----|
| CNAME | www | `hakanyaltir-adn.github.io` | 600 seconds |

---

### Adım 4: Mevcut Çakışan Kayıtları Kaldırın

**Silmeniz gerekenler:**
- ❌ Eski A Record'lar (GoDaddy parking page için olanlar)
- ❌ Eski CNAME Record'lar (varsa)
- ❌ Eski AAAA Record'lar (IPv6 - varsa)

**Tutmanız gerekenler:**
- ✅ NS Records (Name Server kayıtları)
- ✅ SOA Record

---

## 3️⃣ DNS Propagation (Yayılma)

DNS değişikliklerinin yayılması **5 dakika ile 48 saat** arasında sürebilir.

### DNS Kontrolü

Aşağıdaki sitelerden DNS propagation'ı kontrol edin:

- [WhatsMyDNS.net](https://www.whatsmydns.net/) → `gojoapps.com` arayın
- [DNS Checker](https://dnschecker.org/) → `gojoapps.com` test edin

**Beklenen sonuçlar:**
```
gojoapps.com → A Records → 185.199.108.153, 185.199.109.153, 185.199.110.153, 185.199.111.153
www.gojoapps.com → CNAME → hakanyaltir-adn.github.io
```

### Terminal'den Test

```bash
# A Records kontrolü
dig gojoapps.com +short

# CNAME kontrolü
dig www.gojoapps.com +short

# Detaylı bilgi
nslookup gojoapps.com
```

---

## 4️⃣ HTTPS/SSL Sertifikası

GitHub Pages otomatik olarak **Let's Encrypt SSL** sertifikası oluşturur.

### Adımlar:

1. DNS propagation tamamlandıktan sonra GitHub Settings → Pages'e dönün
2. **Enforce HTTPS** seçeneğini işaretleyin
3. GitHub otomatik olarak SSL sertifikası oluşturacak (~1 saat sürebilir)

> ⚠️ **Önemli:** DNS propagation tamamlanmadan HTTPS aktif olmayacaktır.

---

## 5️⃣ Test ve Doğrulama

### Testler:

```bash
# 1. Domain erişimi
curl -I https://gojoapps.com

# 2. WWW yönlendirmesi
curl -I https://www.gojoapps.com

# 3. HTTPS kontrolü
curl -I https://gojoapps.com | grep -i "HTTP"
```

### Tarayıcıdan Test:

- ✅ `http://gojoapps.com` → `https://gojoapps.com` yönlendirilmeli
- ✅ `https://www.gojoapps.com` → `https://gojoapps.com` yönlendirilmeli
- ✅ SSL kilidi yeşil olmalı (tarayıcıda)

---

## 6️⃣ Subdomain Ayarları (Opsiyonel)

Eğer subdomain kullanmak isterseniz (örn: `blog.gojoapps.com`):

### GoDaddy'de:

| Type | Name | Value | TTL |
|------|------|-------|-----|
| CNAME | blog | `hakanyaltir-adn.github.io` | 600 seconds |

### GitHub'da:

CNAME dosyasını subdomain ile değiştirin:
```
blog.gojoapps.com
```

---

## 🔧 Sorun Giderme

### Problem 1: "Domain's DNS record could not be retrieved"

**Çözüm:**
- DNS kayıtlarını kontrol edin
- 24 saat bekleyin (DNS propagation)
- GoDaddy'de doğru A Record'ların eklendiğinden emin olun

---

### Problem 2: "HTTPS enforcement failed"

**Çözüm:**
1. **Enforce HTTPS** seçeneğini kaldırın
2. 1 saat bekleyin
3. Tekrar işaretleyin

---

### Problem 3: "404 Page Not Found"

**Çözüm:**
- CNAME dosyasının repository root'unda olduğundan emin olun
- GitHub Pages'in **main branch** üzerinde aktif olduğunu kontrol edin
- Repository'nin **public** olduğunu kontrol edin

---

### Problem 4: "Mixed Content" Uyarıları

**Çözüm:**
- Tüm internal linklerin `https://` kullandığından emin olun
- Veya relative path kullanın: `/apps/...` yerine `./apps/...`

---

## 📝 Özet Checklist

- [ ] `CNAME` dosyası repository root'una eklendi
- [ ] CNAME dosyası commit edildi ve push edildi
- [ ] GitHub Settings → Pages → Custom domain ayarlandı
- [ ] GoDaddy'de 4 A Record eklendi
- [ ] GoDaddy'de www CNAME eklendi
- [ ] Eski DNS kayıtları silindi
- [ ] DNS propagation tamamlandı (24-48 saat)
- [ ] HTTPS/SSL aktif edildi
- [ ] Test: `https://gojoapps.com` çalışıyor
- [ ] Test: `https://www.gojoapps.com` yönlendiriliyor

---

## 🎯 Beklenen Sonuç

✅ **Başarılı kurulum sonrası:**

```
http://gojoapps.com → https://gojoapps.com ✓
https://gojoapps.com → GojoApps Ana Sayfa ✓
www.gojoapps.com → https://gojoapps.com ✓
https://gojoapps.com/apps/kids-habit-builder/ ✓
SSL Sertifikası: Let's Encrypt (Otomatik yenileme) ✓
```

---

## 📚 Ek Kaynaklar

- [GitHub Pages Custom Domain Docs](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site)
- [GoDaddy DNS Management](https://www.godaddy.com/help/manage-dns-680)
- [DNS Propagation Checker](https://www.whatsmydns.net/)

---

## 📞 Destek

Herhangi bir sorun yaşarsanız:
1. GitHub Issues açın
2. GoDaddy support'a başvurun
3. DNS propagation için 48 saat bekleyin

---

**Son Güncelleme:** Aralık 2025  
**Hazırlayan:** GojoApps Development Team
