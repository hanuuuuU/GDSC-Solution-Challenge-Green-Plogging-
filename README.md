# Isak, green plogging flutter application

<img width="194" alt="image" src="https://user-images.githubusercontent.com/33146152/160340503-af84e553-2636-47cd-9523-317976090023.png">

[![license](https://img.shields.io/github/license/:user/:repo.svg)](LICENSE)
[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)
[![All Contributors](https://img.shields.io/badge/all_contributors-4-orange.svg?style=flat-square)](#Contributors)

2022-GDSC-Solution-Challenge flutter project

## Table of Contents

- [Getting_Started](#getting_started)
- [Components](#components)
- [Main_Function](#main_function)
  - [Main](#main)
  - [Start Running](#start-running)
  - [Start Plogging](#start-plogging)
  - [Trash Classification](#trash-classification)
  - [Finish](#finish)
- [Sub_Function](#sub_function)
- [Futhermore](#furthermore)
- [Download](#download-apk)
- [API](#api)
- [Contributors](#contributors)

## Getting_Started

### What is Plogging?

<p align="center">
<img width="500" alt="image" src="https://user-images.githubusercontent.com/87767242/161135838-2b728bb3-04cf-4a15-8574-3038fe0c1e91.jpg">  

***`Just jogging and Just pick up the trash!`***   
Plogging is a combination of Jogging with picking up litter merging the Swedish verbs ***plocka*** upp (pick up) and ***jogga***(jog) gives the new Swedish verb ***plogga***, from which the workd plogging derives).
The key to plogging is not just the concept of environmental protection of picking up trash, but approaching picking up trash as one of the health-training exercises. The advantage is that it consumes more physical strength than general jogging. While jogging normally with a garbage bag, if you encounter illegally dumped garbage, pick it up and put it in a garbage bag.
In fact, according to a survey by Swedish fitness app Life Island, people who jog only for 30 minutes consume an average of 2355, but those who float at the same time consume 288를. In other words, it doubles the effectiveness of exercise.

## What is Sustainable Development Goals?

![image](https://user-images.githubusercontent.com/33146152/160327143-e36bb1b9-ccea-4f96-b3b2-d92338dd56c5.png)

The Sustainable Development Goals (SGDs) or Global Goals are a collection of 17 interlinked global goals designed to be a "blueprint to achieve a better and more sustainable future for all.
As can be seen in the figure above, there are 17 goals.

### Our goal

We selected several of the UN's 17 sustainable development goals to create an flutter application. And we found activities that can take care of my health and help the environment. After that, we found the actrivity "plogging", and we thought it would be nice if we could add additional features to draw interest from users.

#### Good Health and Well-Being

<img width="143" alt="image" src="https://user-images.githubusercontent.com/33146152/160327288-21a43bdc-3de2-4d36-a26e-9953dc86bc4f.png">
Plogging is an activity to pick up trash while running. App users can improve their health while using this application. Also they can do "well-being" by sharing their progress with people around the world and friends.

#### Responsible consumption and production

<img width="146" alt="image" src="https://user-images.githubusercontent.com/33146152/160338918-1069a764-d3ce-43cb-ae23-2f597ae0d161.png">
As mentioned above, the positive aspects of the environment and sustainable consumption can ve derived through the action of picking up recycled waste.

### The reason why we named "Isak"

![image](https://user-images.githubusercontent.com/33146152/160325415-8deaab92-23fd-44fe-aa66-74c3d70f5181.png)

During the plogging process, you naturally bend your back. So we thought this posture was very similar to the prople from one of the famous paintings, "The Gleaners".
In Korean, "the Gleaners" sounds like "Isak". Therefore, our team decided the logo and application name in this way.

## Components

<img src="https://user-images.githubusercontent.com/33146152/160340776-616bc1a4-dd52-40a5-8e9f-dea06cd16952.png" width="200" height="100">  <img src="https://user-images.githubusercontent.com/33146152/160340848-f25eb360-157c-4988-a2c4-7e9e9034b0f4.png" width="200" height="100">  <img src="https://user-images.githubusercontent.com/33146152/160341014-57c3e47f-b268-40bb-bac0-b01bd03ca8c3.png" width="100" height="100">  <img src="https://user-images.githubusercontent.com/33146152/160341802-7eceab71-16af-46c9-a74f-840c030c3abc.png" width="150" height="100">

- **Disign**
  - [Adobe XD](https://www.adobe.com/products/xd.html)
- **ML** **(** [Python](https://www.python.org/) : `3.7.12` **)**
  - [tensorflow](https://www.tensorflow.org/?hl=ko) & [keras](https://keras.io/) : `2.6.0`
- **Back**
  - [Firebase](https://firebase.google.com/?hl=ko&gclid=CjwKCAjwopWSBhB6EiwAjxmqDeP1h2srS6otlbc3_ubdqsEzdhZ7f5ZvhsOcXqbTeyyw_d9Kq2XPQxoCElgQAvD_BwE&gclsrc=aw.ds)
- **Front** **(** [Dart](https://dart.dev/) : `2.16.1` **)**
  - [Flutter](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_2.10.3-stable.zip) : `2.10.3`
- **Device**
  - Android Virtual Device
    - Pixel 3a API 29
  - Galaxy S8 ( Android 9 )

# Main_Function

## PREVIEW

<p align="center">
  <img width="250" alt="스크린샷 2022-03-30 오후 10 54 04" src="https://user-images.githubusercontent.com/87767242/161129056-8fc8493f-88a9-4110-871b-d46e7c78dff2.gif">
  &nbsp;&nbsp;

## Main

<p align="center">
<img width="250"  src="https://user-images.githubusercontent.com/87767242/161152654-1638f32f-9652-4902-b53a-fafcac1e3e53.png">
<img width="250" alt="스크린샷 2022-03-30 오후 10 54 04" src="https://user-images.githubusercontent.com/87767242/161152663-82d12e0d-24d4-4669-8a2a-6d213143210e.png">
</p>
When you first install and log in, a description of plogging appears. You can set the zoom of the camera with plus and minus buttons, and the camera always shows the user.

## Start Running

<p align="center">
  <img width="250" alt="스크린샷 2022-03-30 오후 10 54 04" src="https://user-images.githubusercontent.com/87767242/161132789-8aec3412-cb30-47d4-91a5-015494afb22b.gif">
  &nbsp;&nbsp;
  <img width="250" alt="스크린샷 2022-03-30 오후 10 54 04" src="https://user-images.githubusercontent.com/87767242/161132580-5004fbfa-a02c-4931-b5d9-400ae1e68963.gif">
  &nbsp;&nbsp;
</p>

If you want to take a break from jogging, the app asks you if you want to do plogging. When you start plogging, the app automatically displays the route line in green and plogging starts. At this time, distance, time, and pace are not measured.

```
Run as you long as you can!
```

## Start Plogging

<p align="center">
  <img width="250" alt="스크린샷 2022-03-30 오후 10 54 04" src="https://user-images.githubusercontent.com/87767242/161130787-e7e3e2a1-f910-487e-ade6-62361473638a.png">
  &nbsp;&nbsp;
  <img width="250" alt="스크린샷 2022-03-30 오후 10 54 04" src="https://user-images.githubusercontent.com/87767242/161125239-ff4cbf61-71b7-4a7e-b0de-e76d716169ee.png">
  &nbsp;&nbsp;

</p>
If you want to take a break from jogging, the app asks you if you want to do plogging. When you start plogging, the app automatically displays the route line in green and plogging starts. At this time, distance, time, and pace are not measured.

```
That's it! Let's go plogging!
```

## Trash Classification

### Classification Model

<p align="center">
<img width="400" alt="assets_ml_-MMARWLU6xXHUlsfby29_-MMAYgUCxGtR2ImywRm3__2020-07-20__9 07 42" src="https://user-images.githubusercontent.com/87767242/161139376-4ebc7db6-57b0-4ea4-be68-46678d32f19d.png">

We discussed a lightweight deep learning model that can be driven on mobile through meetings and chose a model called MobileNetV3. Transfer learning was conducted through the data ([here](https://www.kaggle.com/datasets/jinfree/recycle-classification-dataset)), and this resulted in satisfactory accuracy.  

<p align="center">
<img width="1000" alt="assets_ml_-MMARWLU6xXHUlsfby29_-MMAYgUCxGtR2ImywRm3__2020-07-20__9 07 42" src="https://user-images.githubusercontent.com/87767242/161139901-6380cd0b-4315-4bc9-9d27-3b61b131d6f9.png">
<img width="500" alt="assets_ml_-MMARWLU6xXHUlsfby29_-MMAYgUCxGtR2ImywRm3__2020-07-20__9 07 42" src="https://user-images.githubusercontent.com/87767242/161139890-e477e21f-8102-4259-8ec6-af04e61bf788.png">
</p>

When I tested the actual product with a test case, I was satisfied with the results.

### Mobile Testing

#### Success to Plogging

 <p align="center">
<img src="https://user-images.githubusercontent.com/87767242/161146355-f072d75d-0bae-471e-9ac7-1fd132c3b571.gif" alt="text" width="400"  />
</p>

#### Faild to Plogging

<p align="center">
<img src="https://user-images.githubusercontent.com/87767242/161144670-9d349d2c-b398-489e-8f3a-25d08c88e0bb.gif" alt="text" width="400"  />
</p>

After converting the model into a tflite file, the model was transplanted into a mobile and tested. During plogging state, you can take a picture of the trash you picked up. Models learned with tensorflow automatically recognize garbage and automatically calssify which garbage user picked up. The more trash you pick up and shoot, the more plogging points you'll get.

```
the application will take care of what you picked up
```

## Finish

<p align="center">
<img src="https://user-images.githubusercontent.com/87767242/161147414-54141552-0bcb-4a2d-ba7a-92e2e51b238a.png" alt="text" width="400"  />
<img src="https://user-images.githubusercontent.com/87767242/161147827-f8c92a89-3f75-470a-8f0a-08edf06d042b.png" alt="text" width="400"  />
</p>

If you stop plogging and jogging is over, you can take pictures of the surrounding landscape, and if you press finish, your records are saved on the server. If you press the share button on the right, you can immediately write down your own post in the community.

# Community

<p align="center">
  <img width="250" alt="post_total" src="https://user-images.githubusercontent.com/78309388/160839959-bdb0348e-6e84-437c-a475-5c59508fb72e.png">
  &nbsp;&nbsp;
  <img width="250" alt="스크린샷 2022-03-31 오후 1 35 19" src="https://user-images.githubusercontent.com/78309388/160977541-73a8fd74-a0e5-4cb9-936e-62bfad36620d.png">
  &nbsp;&nbsp;
<img width="250" alt="post_detail" src="https://user-images.githubusercontent.com/78309388/160978597-d92b1158-8a68-4046-927c-77890725384c.gif">
</p>

After the plogging activity, you can share photos of you running activities, surrounding landscapes, or your trash to the community. Check out the records of your friends or people in the same area and leave feedback! If you click the view button on the post, you can check various information such as exercise distance, time, and number of plogging.

```
Lets share and brag!
```

# Ranking

<p align="center">
  <img width="250" alt="rank_friends" src="https://user-images.githubusercontent.com/78309388/160846291-9fe27542-b8c1-4b2d-a9e7-57a8083200ee.png">
  &nbsp;&nbsp;&nbsp;&nbsp;
<img width="250" alt="rank_total" src="https://user-images.githubusercontent.com/78309388/160846351-9521fba7-050e-405b-9c32-e0c64b74250a.png">
  &nbsp;&nbsp;&nbsp;&nbsp;
<img width="250" alt="rank_region_list" src="https://user-images.githubusercontent.com/78309388/160846409-a84b736d-0b29-4283-9647-919e1f222728.png">

</p>

Check the rankings for your running and plogging records on the rankings page. Why not try competing while checking the overall, regional, and friend rankings respectively? Try running and plogging activities diligently to raise your ranking.

# Donation

<p align="center">
  <img width="250" alt="donate" src="https://user-images.githubusercontent.com/78309388/160847056-6378ee13-279c-4af8-8330-0713cdb43939.png">
  &nbsp;&nbsp;&nbsp;&nbsp;
<img width="250" alt="donate" src="https://user-images.githubusercontent.com/78309388/160847209-bea54409-f45a-4d55-b197-44c90c2c2088.png">
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img width="250" alt="donate" src="https://user-images.githubusercontent.com/78309388/161123669-a711747f-8b31-4084-8749-dc9666db10b6.gif">

</p>

You can donate with points collected through plogging activities. If this app is supported by the government or city, we think it will be able to support more disadvantaged neighbors. Wouldn't it be proud if you donated the points you've worked hard for running and blogging to neighbors in need? Currently, donations can be made to large-scale volunteer organizations such as UNICEF and save-the-childeren.

# Sub_Function

## Environment News

<p align="center">
  <img width="250" alt="news" src="https://user-images.githubusercontent.com/78309388/160847780-d48380ef-90d0-47fa-80e6-b3e743a0661c.png">
&nbsp;&nbsp;&nbsp;&nbsp;
  <img width="250" alt="news_detail" src="https://user-images.githubusercontent.com/78309388/160847810-333afafa-f667-44a5-90c1-770b1d23f5c5.png">
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img width="250" alt="news_detail" src="https://user-images.githubusercontent.com/78309388/161123224-a3a74e48-7543-4bd4-b2b6-375545248e97.gif">

</p>

You can view the latest environmental news on the News tab through the News API. Check out our environmental articles to get interested and join us in protecting our planet. Protecting the environment starts with a small concern for each and every one of us.

## Cumulation of plogging activities

<p align="center">
  <img width="250" alt="running_weekly" src="https://user-images.githubusercontent.com/78309388/160847933-caa85f8e-e800-4068-9fc9-ff8413a6aa1e.png">
&nbsp;&nbsp;&nbsp;&nbsp;
  <img width="250" alt="running_cumu" src="https://user-images.githubusercontent.com/78309388/160847969-ad74591b-6cc6-4ed3-a94b-c400ae392f62.png">
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img width="250" alt="running_cumu" src="https://user-images.githubusercontent.com/78309388/160854223-dbb3b0bd-12da-4f98-9964-c5fc5a3a805e.gif">
</p>

You can see the progress of the accumulated plogging activity as a percentage. If you reach the challenge goal, earn points and participate in the donation! Weekly Challenges reset every week so you can earn points continuously. Many challenges that can keep users interest will be added continuosly.

## Subscription ranking

<p align="center">
  <img width="250" alt="ranking" src="https://user-images.githubusercontent.com/78309388/160849446-46dc4f0d-db61-45f5-9a9e-839e29e0333b.gif">
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img width="250" alt="ranking" src="https://user-images.githubusercontent.com/78309388/160979519-72dafdf7-e51f-43d8-92b7-ac7918d41468.gif">
</p>

You can view the cumulative subscription order for this application.
As the number of subscribers increases, you can see how many subscribers you are on the membership screen and how many subscribers you already have on the login screen.

# Furthermore

## More enhanced artificial intelligence

Originally, we tried to make it  object class detection, not a classification model, but we couldn't make it. In the future development, we will change the model and make object recognition.

## Map cluster

<img width="500" alt="ranking" src="https://user-images.githubusercontent.com/87767242/161149750-781d53dc-168b-4cce-a838-c6633747808b.png">

Map clustering makes it easier to see where garbage is concentrated visually, and we want to take action on where garbage is concentrated intensively.

## Recycle Bigdata and EPR(Extended producer responsibility)

<img width="300" alt="ranking" src="https://user-images.githubusercontent.com/87767242/161151267-16ecbbe9-0d13-47d1-b715-2e89e8e950d1.jpg">

After collecting various data such as waste manufacturers, locations, and numbers, I want to apply EPR to manufacturers. A certain amount of recycling obligations are granted to manufacturers to recycle, and if they fail to comply with this, the producer is charged a recycling charge above the cost required for recycling.

## Various profile decorations

<p align="center">
<img width="200" alt="ranking" src="https://user-images.githubusercontent.com/87767242/161201288-221bb6c8-baf6-409c-ae84-b9604a552a32.gif">
<img width="200" alt="ranking" src="https://user-images.githubusercontent.com/87767242/161201299-f76e2ebd-69c7-46dc-ac8e-30b5abd99588.gif">
</p>
It's a little boring to just use points for donations. If we collect points, we will buy something that allows us to decorate our profiles with special effects that move our profiles, and show off our decorated profiles in the community. This will allow people to collect more points.

## Trash can location

Picking up trash isn't the end of it. Since it has to be handled properly, users can check the location of the trash can during flogging, and other users can see the location of the trash can displayed.

# Download APK

[DOWNLOAD LINK](https://drive.google.com/file/d/1m-oT5Lv6Vq5z_PqPCZgku2fH7voLX5y2/view?usp=sharing)

Please click the link to download it.

# API

![image](https://user-images.githubusercontent.com/33146152/160411457-588efe7b-833b-48d8-9b19-cb614ba32b3b.png)

we used News API to continuously update new environmental news.

# Contributors

<table>
  <tr>
    <td align="center"><img src="https://avatars.githubusercontent.com/u/33146152?v=4" width="100px;" alt=""/><br /><b>Jeong Hyeong Lee</b><br/>📈📲🇰🇷</td>
    <td align="center"><img src="https://avatars.githubusercontent.com/u/87767242?v=4" width="100px;" alt=""/><br /><b>Chang Woo Choo</b><br/>🛠📲🇰🇷</td>
    <td align="center"><img src="https://avatars.githubusercontent.com/u/99856691?s=64&v=4" width="100px;" alt=""/><br /><b>Hyun Wook Jang</b><br/>🛠🖼🇰🇷</td>
    <td align="center"><img src="https://avatars.githubusercontent.com/u/78309388?v=4" width="100px;" alt=""/><br /><b>Jeong Woo Han</b><br/>🛠📲🇰🇷</td>
  <tr>
<table>
