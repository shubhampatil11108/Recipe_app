'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "dd0656afc9bca05151739de549ad72ee",
"version.json": "217b81b8320738dbe20e00ef20be6fae",
"index.html": "51e53d8035d82a7f3f7e36c23d7bad5e",
"/": "51e53d8035d82a7f3f7e36c23d7bad5e",
"main.dart.js": "2196f8534ad719b63872362abdfcc371",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "3d0ab907c48ba98423961ed5c87a9a2a",
"assets/AssetManifest.json": "018371240175a2d4de28cc2568bddd9b",
"assets/NOTICES": "747e8d73d62eb3c5c5040053674f907e",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "fac5f36cc9c5da2ca35b481d36825981",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "a013a444ffc66e6cec526a9d2725b88e",
"assets/fonts/MaterialIcons-Regular.otf": "8f7a46169ad61bfbd50d17bc08f068ac",
"assets/assets/b3.jpeg": "14f9fa643f1177a10b3ce2f8a7bb4859",
"assets/assets/c5.jpeg": "e337018da7a5632a26dcc94d067f7354",
"assets/assets/d2.jpeg": "7753d343083da2f74791af7fb3c2a8cd",
"assets/assets/a5.jpeg": "619ad3bb46e64ab5f058c93b1dbe5061",
"assets/assets/e4.jpeg": "09cfc8bfdb8bcf70bd6024f1a6dd15d6",
"assets/assets/e5.jpeg": "7a3508ce133aec743a3abf81a1cb69e4",
"assets/assets/a4.jpeg": "c13474563b578ac42fe3eaca15ab6577",
"assets/assets/d3.jpeg": "0593cf3c100364e2a3a192542aa1195e",
"assets/assets/c4.jpeg": "2f63a19dded2a478551351b914981e2c",
"assets/assets/1.jpeg": "0c22e07de1f68fe9502365382b998eac",
"assets/assets/b2.jpeg": "1f6337143738a20528e58a8f0a637c64",
"assets/assets/11.jpeg": "1ca73ec80096482e80252616b54167fe",
"assets/assets/d4.jpeg": "9a8fb8a9c50c41c7c38a55a9bf8474a6",
"assets/assets/a3.jpeg": "3198552c1e12dadc5bf71d0aa9a2344e",
"assets/assets/e2.jpeg": "62d7f927f183c4f3fc8a8b52fde06b00",
"assets/assets/b5.jpeg": "40ef56628c6e16cb5b7f3886381e0849",
"assets/assets/6.jpeg": "8c38ee1c9aa18a47ee6074bfa7208354",
"assets/assets/c3.jpeg": "5e9c7d4eb8278043ea652197c35ed0eb",
"assets/assets/c2.jpeg": "86dd39313ae020a051b9ada49ff30bef",
"assets/assets/b4.jpeg": "eba91d4b8945563a5d8e193823464a1c",
"assets/assets/e3.jpeg": "d0d62b658f5501a5ae269f1de3a35e41",
"assets/assets/a2.jpeg": "dd39da2feccba7bf53d3312b025c97ab",
"assets/assets/d5.jpeg": "32caa1bacd3f6f9ba6af4deee079ad8a",
"assets/assets/22.jpeg": "bc59ea0f36745ee365fb77cd7aa44f96",
"assets/assets/a1.jpeg": "5d71c2dd73ceba8b635c19e169be4d71",
"assets/assets/d6.jpeg": "152371eb347644549d0f56cd8a728bff",
"assets/assets/c1.jpeg": "0ab99488f508210a2235509db0e1efe1",
"assets/assets/4.jpeg": "c02deaf723f59842ca4ce82ade77fd1b",
"assets/assets/55.jpeg": "25ceae2d460d48384061ebf9aa3e033e",
"assets/assets/b6.jpeg": "62e36c2a450186951d77b31079ba6b52",
"assets/assets/5.jpeg": "d519493a9112f5d0e202d07da09b31b9",
"assets/assets/e1.jpeg": "390e99babfb0a5df8988b188639f5854",
"assets/assets/2.jpeg": "644854384c6e57409b3ee714311751e9",
"assets/assets/b1.jpeg": "9dd95925e506fe6a0009c4b252df4ee8",
"assets/assets/e6.jpeg": "8d403dd35423f98d59cd443a2764437d",
"assets/assets/d1.jpeg": "fa9235f88889364d31f633d844c7af4c",
"assets/assets/a6.jpeg": "85178dc881b9828c0e3ea5b41d517d56",
"assets/assets/33.jpeg": "f0f06338e00939ae75cc293948b8df30",
"assets/assets/44.jpeg": "4834c618c476967cde0f8be5d72e91ef",
"assets/assets/3.jpeg": "d1a85a490f0dfb280ba55402c7d5f701",
"assets/assets/c6.jpeg": "a0748041ed101eb8e0de4c0b9219152d",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
