#!/bin/bash
sed -i '' \
  -e 's/Create child profiles, define tasks (brush teeth, make bed, homework), and set up rewards (extra playtime, treats, special activities)\./Çocuk profilleri oluşturun, görevleri tanımlayın (diş fırçalama, yatak toplama, ödev) ve ödülleri ayarlayın (ekstra oyun zamanı, ikramlar, özel aktiviteler)./g' \
  -e 's/Children log in, see their tasks, complete them, and mark them as done\./Çocuklar giriş yapar, görevlerini görür, tamamlar ve tamamlandı olarak işaretler./g' \
  -e 's/They can track their points and see available rewards\./Puanlarını takip edebilir ve mevcut ödülleri görebilirler./g' \
  -e 's/You get notifications when tasks are marked complete\./Görevler tamamlandı olarak işaretlendiğinde bildirim alırsınız./g' \
  -e 's/Approve or reject based on quality\. Award points instantly\./Kaliteye göre onaylayın veya reddedin. Anında puan verin./g' \
  -e 's/When children have enough points, they can claim rewards\./Çocuklar yeterli puana sahip olduğunda ödülleri talep edebilirler./g' \
  -e 's/You approve the redemption, and everyone celebrates the achievement!/Kullanımı onaylarsınız ve herkes başarıyı kutlar!/g' \
  index-tr.html
