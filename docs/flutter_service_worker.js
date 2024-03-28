'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "061068e2c9bf138d06622981ae841092",
"index.html": "8803476408e2ddfdc04630b74087c27a",
"/": "8803476408e2ddfdc04630b74087c27a",
"main.dart.js": "7b437c0099b40109752d7b3af610b7bb",
"assets/AssetManifest.bin.json": "8e31d36fb9984ccea5e596f68489fbf3",
"assets/AssetManifest.bin": "2d36fa46a344cfcba6da02aa5f5ab551",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/FontManifest.json": "cb7614ebe7da09adf14398c600c69898",
"assets/assets/fonts/Nunito-VariableFont_wght.ttf": "bc1d0d2571eadab780ef9f510fb6675c",
"assets/assets/fonts/Nunito-Italic-VariableFont_wght.ttf": "35214fe3c667c57530f7cc4c9f8d2f48",
"assets/assets/gifs/app.gif": "8709ef1796446799f9adc4076199aa65",
"assets/assets/gifs/frizz.gif": "ecfaab399fce01e76d4d74ad6a9bdc13",
"assets/assets/gifs/landing.gif": "0c1b2c6ba7fe2282388172d178d7f423",
"assets/assets/images/NodeJS.png": "b4f2d135a2f75b2783096345b3aa09eb",
"assets/assets/images/PySpark.png": "b19258941afc1f9b90125bb5c023ccda",
"assets/assets/images/light.png": "3a7e88e2db3aae505e2e1a141aabdbc0",
"assets/assets/images/VueJS.png": "ee557ce47df3cb555226dfbd8cc3c1cd",
"assets/assets/images/Docker.png": "39018c2c9260852297c7012286112f19",
"assets/assets/images/SQL.png": "7bc3e350167b972634527b9dc8167543",
"assets/assets/images/clock.png": "eb4ec2fdbd1c9afe8ff427de8aac39a2",
"assets/assets/images/gmail.png": "2db6349f96d0fc3f1b34649c516d8ccf",
"assets/assets/images/Vuetify.png": "2c36fe0409ad5e61cc5e90a7f37143bb",
"assets/assets/images/linkedin.png": "18d22d6e946ad87c91dc3dcffa9a480b",
"assets/assets/images/capa.png": "bc1bb0ca5cb226abf69624aa768725c6",
"assets/assets/images/Python.png": "80cba9619e2051426ac1e1240bb59890",
"assets/assets/images/Flutter.png": "610a95b1b91100c7fd90baf83507ba19",
"assets/assets/images/PHP.png": "e32eefa19250775fdb1c291d741c5518",
"assets/assets/images/Bootstrap.png": "ca944850f0f8323a7f206cd37430f226",
"assets/assets/images/AWS.png": "a526022508fdc6493204e7c6712d45be",
"assets/assets/images/D3JS.png": "e3d36cf012bd07b7965bac376d6d8471",
"assets/assets/images/Git.png": "718c342e70e4d10ef21bf9d34813d550",
"assets/assets/images/me.jpeg": "af5fb60b12c5e2766ada5f9869b2fe4d",
"assets/assets/images/JavaScript.png": "7fbe9d35ac3c4949afcd44870761daf1",
"assets/assets/images/heart.png": "3d228bb5868ce63d7097e22357a02bf5",
"assets/assets/images/JQuery.png": "449ffe634792a8f32dcc857890d9ea1b",
"assets/assets/images/github.png": "6d63503e8415becbb5bc7ad2a4448fc8",
"assets/assets/images/paper.png": "d5a9ed566c0cacdeeee58f689ef931c7",
"assets/assets/images/HTML.png": "8c297df05a53be7b06b6a9a13b78a25e",
"assets/assets/images/CSS.png": "f9d7e785b5a70cd9642e8544fa848c7a",
"assets/assets/images/board.png": "fc3ce1c9df2976eac815ee87a61d1d5f",
"assets/assets/images/C++.png": "dcbb23d9add882390c7d9e1146d69c6b",
"assets/assets/images/person.png": "98ae81f479a018e68195d384e33c2283",
"assets/assets/images/C.png": "fd375654f1ab5805435c178d50c1618e",
"assets/fonts/MaterialIcons-Regular.otf": "6dd5178a5243e19dee3eae38d3117471",
"assets/AssetManifest.json": "4d3af83ecf88ccdba45a0d149a935cb9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/NOTICES": "4caba7c646969adb6b8f18edc9e4420e",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "9a8e11a039265685bddf5bc643d094b0",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea"};
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
