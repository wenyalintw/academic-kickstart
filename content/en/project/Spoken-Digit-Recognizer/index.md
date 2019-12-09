---
title: Spoken-Digit Recognizer
summary: Build ML model with Keras to recognize spoken-digit.
tags:
- Machine Learning
- Keras
- Digital Speech Processing
- Python
- Qt
date: "2019-01-27T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption: ""
  focal_point: ""
  preview_only: true

links:
- icon: github
  icon_pack: fab
  name: View on GitHub
  url: https://github.com/wenyalintw/Spoken-Digit-Recognizer

url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---
<p align="center">
  <a href=#>
    <img src="resources/microphone.png" alt="Spoken-Digit Recognizer" width="96" height="96">
  </a>
  <h2 align="center">語音數字辨識專案 (Spoken-Digit Recognizer)</h2>
  <div align="center">
    本project運用Keras建立Model，辨識使用者說的中/英數字，並使用GUI呈現。
  </div>
  <br>
</p>

<h2 id="demo">先看段Demo吧！</h2>

<h3 id="spokendigitrecognizerdemoyoutubehttpswwwyoutubecomwatchv_ykum1dxpjm"><a href="https://www.youtube.com/watch?v=_yKum1DxPJM">Spoken-Digit Recognizer – Demo (YouTube)</a></h3>
<p align="center">
<iframe width="640" height="360" src="https://www.youtube.com/embed/_yKum1DxPJM">
</iframe>
</p>

<p>Demo詳細介紹請點連結</p>

<ul>
<li><a href="https://nbviewer.jupyter.org/github/wenya-chungyuan-jauhhsiang/Spoken-Digit-Recognizer/blob/master/docs/Demo_doc.ipynb">(Detailed) Demo</a></li>
</ul>

<h2 id="dataset">Dataset</h2>

<p><strong>所有使用data皆置於<a href="https://github.com/wenya-chungyuan-jauhhsiang/Spoken-Digit-Recognizer/blob/master/dataset.rar">dataset.rar</a></strong></p>

<h3 id="">英文</h3>

<ul>
<li><a href="https://github.com/pannous/tensorflow-speech-recognition?fbclid=IwAR1tThhKhbMM_BnKE4SK16qcbuGdw1gJw7iWVVyEhDk9vZFF5Z8E6rjuWUs">pannous on github</a>


<ul>
<li>連結內spoken<em>numbers</em>pcm.tar含2400筆.wav檔，為15位不同人唸英文數字(0~9)的單數字音檔(160/人)</li></ul>
</li>

<li>3位contributer每人自錄160筆，與上述相加共2880筆</li>
</ul>

<h3 id="-1">中文</h3>

<ul>
<li>3位contributer每人自錄500筆，共1500筆


<ul>
<li>每筆data為中文數字數字0~9單數字音檔，每人一個數字錄50筆</li></ul>
</li>
</ul>

<h2 id="-2">目標</h2>

<ol>
<li>使用者對麥克風説一串中/英文數字(0~9)，程式能辨識使用者說了哪些數字  </li>

<li>使用生成對抗網路GAN來生成音檔，即讓程式產出數字0~9的音檔</li>
</ol>

<h2 id="implementation">Implementation</h2>

<p>對目標1，先將包含多數字的音檔分割，再使用不同種model來辨識，詳細介紹請點連結</p>

<ul>
<li><a href="https://nbviewer.jupyter.org/github/wenya-chungyuan-jauhhsiang/Spoken-Digit-Recognizer/blob/master/docs/split_audio.ipynb">(Detailed) Split Audio</a></li>

<li><a href="https://nbviewer.jupyter.org/github/wenya-chungyuan-jauhhsiang/Spoken-Digit-Recognizer/blob/master/docs/Spectrogram_CNN_doc.ipynb">(Detailed) Spectrogram + CNN</a></li>

<li><a href="https://nbviewer.jupyter.org/github/wenya-chungyuan-jauhhsiang/Spoken-Digit-Recognizer/blob/master/docs/MFCC_RNN_doc.ipynb">(Detailed) MFCC + RNN</a></li>
</ul>

<p>對目標2，使用inverse-STFT方式，詳細介紹請點連結</p>

<ul>
<li><a href="https://nbviewer.jupyter.org/github/wenya-chungyuan-jauhhsiang/Spoken-Digit-Recognizer/blob/master/docs/GAN_doc.ipynb">(Detailed) GAN</a></li>
</ul>

<h2 id="-3">問題討論</h2>

<h3 id="1">1. 聲紋影響</h3>

<pre><code>- 一個沒有經過我們model訓練過的人聲，若進行辨識測驗時的平均正確率會較低
- 我們認為這和聲紋息息相關，也就是同樣的字由不同人發聲的訊號頻譜存在差異
</code></pre>

<h3 id="2">2. 中/英文</h3>

<pre><code>- 我們初期是以英文數字為輸入音訊，後期則發現英文其實在發音上相較中文有更多的變化性，如某些子音的發音屬於清音，會較容易被誤判為靜音
- 英文對於發音並沒有制式的音調規則，例如有些字會因語氣不同而音調不同，這導致我們model的辨識正確率並不理想
- 後來我們選擇嘗試中文，由於中文絕大多數發音是濁音，且抑揚頓挫已有明確定義，因此訓練出的model辨識正確率果然如我們預期，有明顯的提升
</code></pre>

<h2 id="contributors">Contributors</h2>

<p><a href="https://github.com/wenyalintw">WenYa Lin</a>、<a href="https://github.com/ChungYuanHsu">ChungYuan Hsu</a>、<a href="https://github.com/r07522749">JauhHsiang Lan</a></p>