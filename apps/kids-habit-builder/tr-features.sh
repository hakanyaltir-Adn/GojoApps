#!/bin/bash
sed -i '' \
  -e 's/Each child gets their own profile and progress tracking\./Her çocuk kendi profiline ve ilerleme takibine sahip olur./g' \
  -e 's/Create daily, weekly, or monthly tasks\. Set custom points for each task based on difficulty and importance\./Günlük, haftalık veya aylık görevler oluşturun. Zorluk ve öneme göre her görev için özel puanlar belirleyin./g' \
  -e 's/Define your own rewards with point values\. From extra screen time to special treats - you'\''re in control\./Puan değerleriyle kendi ödüllerinizi tanımlayın. Ekstra ekran süresinden özel ikramlara - kontrol sizde./g' \
  -e 's/Review and approve completed tasks before awarding points\. Ensure quality and teach accountability\./Puan vermeden önce tamamlanan görevleri inceleyin ve onaylayın. Kaliteyi sağlayın ve hesap verebilirliği öğretin./g' \
  -e 's/Visual progress bars and statistics show how each child is doing\. Celebrate milestones together!/Görsel ilerleme çubukları ve istatistikler her çocuğun nasıl gittiğini gösterir. Dönüm noktalarını birlikte kutlayın!/g' \
  -e 's/Built-in encouragement system keeps kids motivated and excited about completing tasks\./Yerleşik teşvik sistemi, çocukları görevleri tamamlama konusunda motive ve heyecanlı tutar./g' \
  -e 's/COPPA compliant\. No ads, no tracking, no external content\./COPPA uyumlu. Reklam yok, takip yok, harici içerik yok./g' \
  -e 's/Only parents can upload photos or create content\./Sadece ebeveynler fotoğraf yükleyebilir veya içerik oluşturabilir./g' \
  -e 's/Full support for Turkish and English with automatic locale detection\. Switch anytime in settings\./Otomatik konum tespiti ile tam Türkçe ve İngilizce desteği. Ayarlardan istediğiniz zaman değiştirin./g' \
  -e 's/Works seamlessly on iOS and Android\. Real-time sync across all devices\./iOS ve Android'\''de sorunsuz çalışır. Tüm cihazlarda gerçek zamanlı senkronizasyon./g' \
  index-tr.html
