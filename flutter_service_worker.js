'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "a4a7792fd39861d1b5ad64d5a1d954c3",
"assets/AssetManifest.bin.json": "2df41de384f47a5c997543c8811b83fa",
"assets/AssetManifest.json": "86449767705a7f01a6955078fae5edfa",
"assets/assets/images/bcc_truck.json": "0be6cf7b5e3df6b78716fd3bc8a5f37c",
"assets/assets/images/bigcreek/addTask.png": "b1a4541c9a26625509937514e1f7d7e3",
"assets/assets/images/bigcreek/addTaskAGC.png": "f64adf654ce39bd10fd0264898f404a5",
"assets/assets/images/bigcreek/addTaskJobSite.png": "9d88e3a80ef14f0cc82c1e6df3e09ff8",
"assets/assets/images/bigcreek/construction_worker.png": "aef66f0a522191496fda57b253216171",
"assets/assets/images/bigcreek/downloading_jobsite.png": "ad5c3d8e9cfaf64b83496771f89d7cc5",
"assets/assets/images/bigcreek/employee_card.png": "4060008af05279f1ad1518cc4c6311e2",
"assets/assets/images/bigcreek/homescreen.png": "3eddc0c749effeed83da025d07b7a970",
"assets/assets/images/bigcreek/Job%2520Site%2520Details.png": "27588e2172d023cc4f53cf7256ffda75",
"assets/assets/images/bigcreek/jobSiteAdded.png": "3e0e709aa539547450a55414604d08a5",
"assets/assets/images/bigcreek/jobSitesForceDownload.png": "6e3646c6aea25af388f57cde730df18e",
"assets/assets/images/bigcreek/login.png": "947cae79f8e78f4d394b0cf6314fe589",
"assets/assets/images/bigcreek/menu_offline.png": "b0602cefaeec2c6c39ba7ecdc1089133",
"assets/assets/images/bigcreek/menu_online.png": "57407eb2229eabb89868f6a5fe9420aa",
"assets/assets/images/bigcreek/OfflineData.png": "f08a6f8a5ee66968d8756d808bee5efe",
"assets/assets/images/bigcreek/offline_jobsites.png": "8b28615fd080ba969289fc934fb08168",
"assets/assets/images/bigcreekmockup.png": "33d25190ce152e0ab32c16a408a5004f",
"assets/assets/images/DFR.jpg": "93d82b56a53c46ec8330ccea34ef4604",
"assets/assets/images/digging%2520bone%2520up.json": "408a55590087b9acaf3560c335e81c04",
"assets/assets/images/Diving.jpg": "2d6f3d3c24258bf568107b62742931ee",
"assets/assets/images/icon.png": "2f253c50d059bc92e6631e51bba040f8",
"assets/assets/images/jethro.json": "8ab124eba4e7863152a5281d893b7419",
"assets/assets/images/jethro1.json": "8ab124eba4e7863152a5281d893b7419",
"assets/assets/images/linkedin.png": "1a9291b12d642cb2fa8aa8fbef5c7be1",
"assets/assets/images/medvendor/Contact%2520Card-1.png": "bdd70cd7519c0865f8d675e5618cbddf",
"assets/assets/images/medvendor/Contact%2520Card.png": "52d728ccbc267da0267cd0ffba2e653e",
"assets/assets/images/medvendor/doctor.png": "4061cda58c59cd605f952d63bbab0e28",
"assets/assets/images/medvendor/filter%25201.png": "c5c6eebe71c814aeec60e4d3992a8408",
"assets/assets/images/medvendor/filter%25202.png": "43dcf33f6f2b370fa14623f9e7260fb8",
"assets/assets/images/medvendor/filter.png": "f3d91f397a54fbca25c178cd1262f944",
"assets/assets/images/medvendor/filter_icon.png": "ed5ebda5b26865d11c1d368848f3d070",
"assets/assets/images/medvendor/Frame%2520373.png": "08ce2c9c4be44dd515a187053c879663",
"assets/assets/images/medvendor/Frame%2520379.png": "5a7d94b121b0fec507640ee215bf9767",
"assets/assets/images/medvendor/Frame%2520382.png": "2b6a8d468f0ff21bdbfd1ba55249b37f",
"assets/assets/images/medvendor/Frame%2520411.png": "a518515f4931a02b76bd51d75158ad72",
"assets/assets/images/medvendor/Frame%2520413.png": "6dd925e5f32b4c3079aa8cb54d053f47",
"assets/assets/images/medvendor/Frame%2520414.png": "9a83ee1e876b0b7bcb2e506f202df994",
"assets/assets/images/medvendor/homescreen.png": "9962f7d1d3d219094fc65b3114470001",
"assets/assets/images/medvendor/Insurance%2520Card.png": "0d83a903c4b169fa84bbffbd0152f2e7",
"assets/assets/images/medvendor/locations.png": "4b744627a8af167217d12e1f28339a0f",
"assets/assets/images/medvendor/Login.png": "d6ca09c283b63709328269f8624150a1",
"assets/assets/images/medvendor/profile.png": "61b7f2bc1dcdc9e66e755868151ad374",
"assets/assets/images/medvendor/search_icon.png": "c517aab3c00e8534a2d8300f21efc38e",
"assets/assets/images/medvendor.json": "a0bb8b5518b3c9847c4ad430b23ca6ca",
"assets/assets/images/medvendormockup.png": "7237a1e608b3db987285575868e4daa5",
"assets/assets/images/medvendor_2.json": "77e74d84eaa98267453d2bd0254289fd",
"assets/assets/images/medvendor_no_outline.json": "9b07a2c8638830a180136130ec300981",
"assets/assets/images/painting.jpg": "562df8888ade3c3ddd4db8cd755bbcb6",
"assets/assets/images/pickleball.jpg": "afef27342df623cb46f8313e6987d16d",
"assets/assets/images/profile.jpg": "8946510a7eb0c152177bc66c16f8246a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "ea18d6e4055a67913bbb0cfe3170de1f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "6eea9e66d4900a2a399c2b7afdfed0c5",
"icon.png": "2f253c50d059bc92e6631e51bba040f8",
"index.html": "64fede7bd9d77bf3bcdb97b76ddf53e9",
"/": "64fede7bd9d77bf3bcdb97b76ddf53e9",
"main.dart.js": "074928c8b820b1760c445a782f73c012",
"manifest.json": "75ddf561701309cd388dc71fbe615148",
"version.json": "7804eb643eb875d188221832d4ff86c5"};
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
