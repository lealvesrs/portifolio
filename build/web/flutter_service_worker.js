'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "8f7d1a7dcece50bd25d10741f190e209",
"assets/AssetManifest.json": "418bc2ced904c4dd43e6186587546b36",
"assets/assets/fonts/Nunito-Italic-VariableFont_wght.ttf": "35214fe3c667c57530f7cc4c9f8d2f48",
"assets/assets/fonts/Nunito-VariableFont_wght.ttf": "bc1d0d2571eadab780ef9f510fb6675c",
"assets/assets/images/aws.png": "1a20078345bba4a96ed236597c324d8a",
"assets/assets/images/board.png": "5afe21b8a317b5195f651ace3649eda1",
"assets/assets/images/Bootstrap.png": "e084cabf8286c9bc7199c610fc71783b",
"assets/assets/images/C++.png": "83f5285d4dd64a95cd6a9ce225ce0496",
"assets/assets/images/C.png": "7faf200f6ff86561c72740973b2ad7a9",
"assets/assets/images/clock.png": "c649d4c58f510614c214d5284a3e8195",
"assets/assets/images/CSS.png": "23a42b73197f0d1950306b9c2ba2c466",
"assets/assets/images/Flutter.png": "f73d05ac26489d13186281f7f2411619",
"assets/assets/images/Git.png": "6083991e4a009cb2a489245c6b140510",
"assets/assets/images/heart.png": "5157448fb4891bab4aad50e7075efbb6",
"assets/assets/images/HTML.png": "06aac974a83623d9b095daa1abedd527",
"assets/assets/images/itep.png": "448be47ba7844e88042a1a32fd03497d",
"assets/assets/images/JavaScript.png": "7fbe9d35ac3c4949afcd44870761daf1",
"assets/assets/images/JQuery.png": "c48d972319e116694219e3b67aaa3552",
"assets/assets/images/light.png": "422caf9e7d1d152228e948619cfc7a92",
"assets/assets/images/me.jpeg": "af5fb60b12c5e2766ada5f9869b2fe4d",
"assets/assets/images/NodeJS.png": "d2295b5f90624c5f2dce560930fb61e5",
"assets/assets/images/paper.png": "cafcb1d5eeed69b5354d2994f7bdfbd9",
"assets/assets/images/person.png": "d9dda83f9afe673c50afe87602bd2e4e",
"assets/assets/images/Python.png": "4e7aa65add57397f86a92a78fb1e4a97",
"assets/assets/images/SQL.png": "1b130905a5045afb17427037eb3098ac",
"assets/assets/images/VueJS.png": "66a33b2a95924a4a4c00f020e0d6df51",
"assets/assets/images/Vuetify.png": "220fc057c8b01111b2e974ff7db5f7d3",
"assets/FontManifest.json": "cb7614ebe7da09adf14398c600c69898",
"assets/fonts/MaterialIcons-Regular.otf": "ee19cf62e5dac7c4972f9ac0ed1395b0",
"assets/NOTICES": "79cae7f464003eb7d6fb840ee147ed87",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "ef1227c971d41e1a0d31b516c0cf02ea",
"/": "ef1227c971d41e1a0d31b516c0cf02ea",
"main.dart.js": "c1ba08aa46cf2dfeb859ebfd663f93ce",
"manifest.json": "9a8e11a039265685bddf5bc643d094b0",
"version.json": "061068e2c9bf138d06622981ae841092"};
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
