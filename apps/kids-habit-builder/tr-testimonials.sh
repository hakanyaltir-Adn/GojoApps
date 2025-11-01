#!/bin/bash
sed -i '' \
  -e 's/"Game changer! My 7-year-old now makes his bed without being asked/"Oyunun kurallarını değiştirdi! 7 yaşındaki oğlum artık sorulmadan yatağını topluyor/g' \
  -e 's/The reward system really works!"/Ödül sistemi gerçekten işe yarıyor!"/g' \
  -e 's/— Sarah M., Mother of 2/— Sarah M., 2 Çocuk Annesi/g' \
  -e 's/"Finally, no more battles over homework and chores/"Sonunda, ödevler ve ev işleri için kavga yok/g' \
  -e 's/My kids compete to earn points. Best parenting tool ever."/Çocuklarım puan kazanmak için yarışıyor. Şimdiye kadarki en iyi ebeveynlik aracı."/g' \
  -e 's/— Michael T., Father of 3/— Michael T., 3 Çocuk Babası/g' \
  -e 's/"Love how simple it is to set up/"Kurulumun ne kadar basit olduğunu seviyorum/g' \
  -e 's/My kids understand it immediately and they'\''re actually excited about responsibilities now!"/Çocuklarım hemen anlıyor ve artık sorumluluklar konusunda gerçekten heyecanlılar!"/g' \
  -e 's/— Jessica L., Mother of 1/— Jessica L., 1 Çocuk Annesi/g' \
  -e 's/\* Testimonials are from beta testers/* Görüşler beta test kullanıcılarındandır/g' \
  index-tr.html
