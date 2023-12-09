'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "d288f24a1648efa4f64728447b7d3948",
"index.html": "36fdfc391a369c211c92e1cb800a17f0",
"/": "36fdfc391a369c211c92e1cb800a17f0",
"main.dart.js": "0aaffa2dd27318f75109ea13dc057c8d",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "3fc29f9294b755bca0378065b89e216e",
"assets/AssetManifest.json": "0f635938597a4c79275636907ccec2c9",
"assets/NOTICES": "e0c946212dbbf023cb1ae3ca29a313cf",
"assets/FontManifest.json": "d0975c94afeb32ec4155750ce2543f5e",
"assets/AssetManifest.bin.json": "ad987b94773638ee69d7f9f1a6ea7641",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "4125de1a6c32276237b1ccda83fe896f",
"assets/packages/flutter_credit_card/icons/discover.png": "62ea19837dd4902e0ae26249afe36f94",
"assets/packages/flutter_credit_card/icons/rupay.png": "a10fbeeae8d386ee3623e6160133b8a8",
"assets/packages/flutter_credit_card/icons/chip.png": "5728d5ac34dbb1feac78ebfded493d69",
"assets/packages/flutter_credit_card/icons/visa.png": "f6301ad368219611958eff9bb815abfe",
"assets/packages/flutter_credit_card/icons/hipercard.png": "921660ec64a89da50a7c82e89d56bac9",
"assets/packages/flutter_credit_card/icons/elo.png": "ffd639816704b9f20b73815590c67791",
"assets/packages/flutter_credit_card/icons/amex.png": "f75cabd609ccde52dfc6eef7b515c547",
"assets/packages/flutter_credit_card/icons/mastercard.png": "7e386dc6c169e7164bd6f88bffb733c7",
"assets/packages/flutter_credit_card/icons/unionpay.png": "87176915b4abdb3fcc138d23e4c8a58a",
"assets/packages/flutter_credit_card/font/halter.ttf": "4e081134892cd40793ffe67fdc3bed4e",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "bc61457c3f51bbb308afdaf7a61564cf",
"assets/fonts/MaterialIcons-Regular.otf": "724620e5adb8563c03b0b9e207668700",
"assets/assets/svg/size_done.svg": "91332f11c54bc68cd4cbc82860081b2c",
"assets/assets/svg/logo.svg": "a3e59698e5508dd0333ca969d651b355",
"assets/assets/images/telegram_icon.png": "31d2404648b5b1cad62fd8c20a1f7082",
"assets/assets/images/vc.ru.png": "7571820bfc1443d82cbe756ed9210ed8",
"assets/assets/images/casion.png": "b3f800fc4a762d620b2ef02080702858",
"assets/assets/images/message_checked.png": "007378a8e93affc19a5a03aaf9cc9a3a",
"assets/assets/images/lock.png": "28eff0b945f6c0e484aada092f981456",
"assets/assets/images/city.png": "c24ff5c41d7c082ea216d4d70cf1d93e",
"assets/assets/images/secure.png": "f737291b2cd6993ee6cb073b8b8e3473",
"assets/assets/images/forest.png": "af239bb9658ed1d25cf337d41af9f658",
"assets/assets/images/shop.png": "0dd1ce574ed1056886adbfa7ebd9008f",
"assets/assets/images/sound_17216.aac": "9a263add76ec4cdf512640b719c731bd",
"assets/assets/images/draw_svg20210813-6735-ymh2xo.svg.png": "dd7ca40d47c4e3c9fb9535054238ed0f",
"assets/assets/images/naiv.png": "421d6776bea222afe44cd8a9bf246d45",
"assets/assets/images/search.png": "49f946fee9cb1b882f79d773b53b25c6",
"assets/assets/images/logo_large.png": "8f95589490cb91e40de9642aa11dab81",
"assets/assets/images/logo.png": "ca52a35e209e52a86f8a17016cda5fa5",
"assets/assets/images/oplata.png": "e6c01e4acdef553e257ff97b1da20e9d",
"assets/assets/images/default_test.jpeg": "f54b9750adc747b553b8a3339948c1e3",
"assets/assets/images/phone.png": "543fb4c72581ffd08d8fc1b2ca065353",
"assets/assets/images/call.png": "974607dcd9e9d64fcfc8a4c1deeadfc2",
"assets/assets/images/village.png": "ac1eb2893aed23ef28fbfc403d7655b7",
"assets/assets/images/sound_17216.mp3": "51947668c28219fa0b1f6a13343340cc",
"assets/assets/images/chat.png": "ba3c27dd999502d1d73e0f106e777519",
"assets/assets/images/habr.com.png": "6ab61d91900df19ef8b3c029394232c9",
"assets/assets/images/major.mp3": "acd4f817d57be05a994b4ab29b23bec3",
"assets/assets/images/bg.jpg": "bda14268b88a9d4fa81ddf74183e0900",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
