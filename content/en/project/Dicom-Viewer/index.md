---
title: Dicom-Viewer
summary: An PyQt-application which could display and edit 2D/3D Dicom image.
authors: ["admin"]
tags:
- Dicom
- Image Processing
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
  url: https://github.com/wenyalintw/Dicom-Viewer

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
  <a href="https://github.com/wenyalintw/Dicom_Viewer">
    <img src="resources/brain.png" alt="Dicom Viewer" width="96" height="96">
  </a>
  <h2 align="center">簡易醫學影像GUI (Dicom Viewer)</h2>
  <p align="center">能顯示 2D/3D Dicom影像的應用</p>
  <br>
</p>

<p>本project旨在利用python+Qt製作簡易的醫學影像GUI，提供一個平台，能在上面使用python開發測試各式影像處理功能，尤其是針對3D之Dicom Stack！</p>

<h2 id="demo">先看兩段Demo吧</h2>

<h3 id="ahrefhttpswwwyoutubecomwatchvtoxcznnnz4cfeatureyoutube2dimageprocessinga"><a href="https://www.youtube.com/watch?v=TOXczNnnZ4c&amp;feature=youtu.be">2D Image Processing</a></h3>

<p align="center">
<iframe width="640" height="360" src="https://www.youtube.com/embed/TOXczNnnZ4c">
</iframe>
</p>

<h3 id="ahrefhttpswwwyoutubecomwatchvns75aqovossfeatureyoutube3dimageprocessinga"><a href="https://www.youtube.com/watch?v=NS75AQOVOss&amp;feature=youtu.be">3D Image Processing</a></h3>

<p align="center">
<iframe width="640" height="360" src="https://www.youtube.com/embed/NS75AQOVOss">
</iframe>
</p>

<h2 id="">執行畫面</h2>

<p>執行程式會打開Main Window，左上角的選單有2D processing和3D processing兩個子選項，其中後者embed有3D volume reconstruction功能</p>

<h3 id="mainwindow">Main Window</h3>

<p><a href="https://github.com/wenyalintw/Dicom_Viewer">
    <img src="resources/mainwindow.png" alt="mainwindow" width="960" height="480">
</a></p>

<h3 id="2dprocessing">2D processing</h3>

<p>內含功能</p>

<ul>
<li>Load Image (含*.dcm)</li>

<li>Save Image</li>

<li>Convert to gray scale</li>

<li>Restore</li>

<li>Thresholding</li>

<li>Region Growing</li>

<li>Morthology (Dilation, Erosion, Opening, Closing)</li>

<li>Edge Detection (Laplacian, Sobel, Perwitt, Frei &amp; Chen)</li>

<li>Drawing
<br>
<a href="https://github.com/wenyalintw/Dicom_Viewer">
<img src="resources/2D_Processing.jpg" alt="2D_Processing" width="960" height="480">
</a></li>
</ul>

<h3 id="3dprocessing">3D processing</h3>

<p>內含功能</p>

<ul>
<li>Load DICOM stack</li>

<li>Save slice (axial, sagittal, coronal)</li>

<li>Colormap transform</li>

<li>Slider scrolling</li>

<li>Mouse hovering/clicking</li>

<li>Show DICOM info</li>

<li>Show slice index coordinate</li>

<li>3D volume reconstruction
<br>
<a href="https://github.com/wenyalintw/Dicom_Viewer">
<img src="resources/3D_Processing.jpg" alt="3D_Processing" width="960" height="480">
</a></li>
</ul>

<h3 id="3dvolumereconstruction">3D volume reconstruction</h3>

<p><br>
<a href="https://github.com/wenyalintw/Dicom_Viewer">
    <img src="resources/3D_Volume.jpg" alt="3D_Volume" width="480" height="480">
</a></p>

<h2 id="futureextension">Future Extension</h2>

<ul>
<li>加入數據分析功能
>導入一些醫學知識，讓軟體有一些初步的分析功能（如有沒有骨折、腫瘤等等）</li>

<li>3D reconstruction改善
>更新volume重建算法，提升計算速度與還原度</li>

<li>3D image processing
>加入對3D voxel影像進行更複雜的影像處理功能</li>

<li>Make it distributable
>包裝成release版本，成為可轉散發軟體。希望能支援跨平台運作（window、macOS）</li>
</ul>

<h2 id="howtouseit">How to use it?</h2>

<p>Project root will be <strong>/src</strong>, just clone it and run mainwindow.py.</p>

<p>Strictly follow the package version in requirements.txt is not necessary.</p>

<h2 id="acknowledgments">Acknowledgments</h2>

<ul>
<li><a href="https://github.com/wenyalintw/Dicom-Viewer/blob/master/resources/brain.png">brain.png</a> licensed under "CC BY 3.0" downloaded from <a href="https://www.iconfinder.com/icons/1609653/brain_organs_icon">ICONFINDER</a> </li>

<li>3D volumn reconstruction modified from <a href="https://www.raddq.com/dicom-processing-segmentation-visualization-in-python/">Howard Chen's Post</a></li>
</ul>