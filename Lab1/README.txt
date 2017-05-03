1. Proj 02-03 與 Proj 02-04 分別放在兩個不同的資料夾，裏面包含了所需的 Code 與 Image

2. Pixel Replication 與 Bilinear Interpolation 兩個 Script 使用方法一樣。

  (1) 先輸入欲縮小之倍率，可為任何實數( factor <= 1)，在Image資料夾中產生一縮小的圖片

  (2) 再輸入欲放大的倍數，可為任何實數( factor >= 1)，在Image資料夾中產生一放大的圖片

  (3) 先縮小或放大均可，建議先縮小再放大，程式會跑得比較快

  (4) 產生兩個圖片後 Script 結束 

3. resizedImage_replication.m 與 resizedImage_bilinear.m 兩個 function 的使用方法如同 Spec

  (1) 傳入 image 與 scaling factor 後，回傳一縮放過後的圖片