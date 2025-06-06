'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "b26fea0c350da1b91f90b6b63cbd9944",
"version.json": "009c9e65172e010890f7f65fde438006",
"index.html": "c1c5f29031926111ab3ccb7c551c88f9",
"/": "c1c5f29031926111ab3ccb7c551c88f9",
"main.dart.js": "db781e0d2eac985cf46151bee973a056",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
".git/config": "5204647fc25afcd71236868c3c57a4a4",
".git/objects/59/62efb2dffef4c259bda261b128fcab4b659c34": "11e1a7683fedc73b6a0da57ee3c6a112",
".git/objects/66/37d19b0d4b90e6b537f686ca8befb30ffa1170": "a6a9df57ea7fd2983180ea1f720866bd",
".git/objects/3e/219f79d4ec0156f4fc8437f7f64494dba4dd44": "620bd413efc56accbd9b8ed6553ffa57",
".git/objects/3e/d0ddd7136a48520910e7e4bf665362facd60d4": "c8322669a78b5f07c75b1decdc05718d",
".git/objects/9b/f73b20a9015970ce46f44c689b04b5b6bf3c45": "05b80c2ca88604b7a72f67f654b35817",
".git/objects/9b/d3accc7e6a1485f4b1ddfbeeaae04e67e121d8": "784f8e1966649133f308f05f2d98214f",
".git/objects/58/31840272dc1c691085a1cda9eff0467b035365": "adfbc6c173c4e9b037c82eb43ea9b9d0",
".git/objects/67/725d7ad5a450c11875090f691d74e687d1628c": "f49ab1ea5c667341f85f62e767060d9d",
".git/objects/93/3dcf4b74131319d529eb439874e00861cfabce": "67da8d425300bc88b96b8c3d3b6cb045",
".git/objects/94/90ffc6d2e158b266f719d58365905c1c5060cb": "98801650050f9fa10870b4e56c89676a",
".git/objects/9d/8c3c1e758ef8711186ae12fb0fd22aaa0f70db": "a391c0384d1cabd19155f2907d961b09",
".git/objects/b4/ed40c6334f915672b6e2346654e20f01e07696": "27ff3c6afd4cc940358a4ff93b46ff04",
".git/objects/a2/1e72c87bd7c5ddb06f3892b6dfd18f71687b49": "598824227a9ea128f3537fc1f1d8f458",
".git/objects/a5/bb7e5c656f02d180525dcf84afa71181ce11e1": "80bcfd9b3e1ac7badf40198a799e701c",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/f3/3e1d8cd298ec2a7330a40716fa9244455aeac8": "0235d54c02368abcc0a944222cb53a01",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/c0/262130966dede1c662d06575e3b64f9f051154": "48930d7cf4faf3995ed27136f7de1049",
".git/objects/fc/670d19e6e092a6aaa54a55eee38b010849b592": "db30ba7b07ab1aaa8d98491333de54a7",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/objects/c6/545ac3b57911deff4a3b86082d488a01e95759": "04b8bb5f7ee61a259c19e36668eea2c2",
".git/objects/7c/1d539d122df0db1cda8b12d6ef38570fd57931": "a90ce32634040ab6f4d482fec82b68f1",
".git/objects/80/a4398db651aee490c08063a3a030e1b4b873eb": "4a74629a243b2d471f8faa60e93fb679",
".git/objects/8f/5e227202cbba5fc049ae000fd275abfdc43ff3": "0047e8c109518aa9729bfafdef328831",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/21/4215a03b2343798e31d9cbcc9d8029380a11ad": "b0486f433d29368a047e2605d1a4d154",
".git/objects/72/dc6b0a75fe8042f6894dabd21d36d6c9aece1a": "261e2bf8eb73927b3abe764657780407",
".git/objects/2f/5cc8a5666866cabe32f29ca881cb0d62bf49bd": "efc2c4346f61190dfbaa3b3cf7556de8",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/88/9e5c1a37dea8650a4221054de650a8b614b1d9": "f2074014c1d15eaf0f212470b508f800",
".git/objects/07/e82be88ae9ba667813be427c05f44d67d6599f": "da5dc990b11be53d0757620d79ad9cd9",
".git/objects/9a/54a12e07518d774d1aec7f8994c2ac75cc147f": "62e5b19dc0e38064163a0f5de7638115",
".git/objects/5d/7db26b44e9d84812a8f4db4b6960839c94f6e0": "b4b5da7cd2e0382d866ad544fd993f11",
".git/objects/31/edfe0161ac7c9117968bc771793148e630f501": "fcc5d3924928b9eb3261fa4aeafc0a80",
".git/objects/31/a43bc628570b833cabe6503929d4625ce47898": "ef1e0c45aa239bf590c04189608788bd",
".git/objects/5e/1908adab88379a20e71ad413739e0950ad9962": "6884cc3681227303450720d7f8f242c5",
".git/objects/08/ebd0159af29625f215a4da71fa82bbfb98f3ae": "53e4dd8598c70fdcda933fa3e48098ad",
".git/objects/6c/4a3798901ddb0bc262c707c9b024cea342b2e1": "435838d4141f56f843d849be5b1c4e51",
".git/objects/d3/a50a3db2546f068fe2f71d6ebfd63bce290178": "9e22736e074f0357ea59f7a2706235aa",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d4/ca7dbd4d0a9bf528a00209e9520d291bc782a3": "b5dcc04d53947200185cd40f81a0a15b",
".git/objects/dc/eb76fc81ab8ba17f286c7a8fc272f043b0004e": "805fdba16765afacb9eaa92c167249ac",
".git/objects/dc/11fdb45a686de35a7f8c24f3ac5f134761b8a9": "761c08dfe3c67fe7f31a98f6e2be3c9c",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a8/8f6069171de2a58fb7f491758d26b8f7023b2c": "43ddb5193ac701ae4f15aa011f802c82",
".git/objects/a8/6f703084d17020859a78f48b1175cc0d672a94": "efb2d3f99c30fff1f13ae08e6c33b7a5",
".git/objects/a6/fcf44de1f792270b139d68204313983b23d982": "585c1cf574dcd480ff74956ca7ddee5d",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/6a5236065a6c0fb7193cb2bb2f538b2d7b4788": "4227e5e94459652d40710ef438055fe5",
".git/objects/e1/7ccb1c34e1455bf615294dc0509afa05983386": "74294090e31c4b5f6ab96a70dd123c91",
".git/objects/cc/2f81cbda2ef7683269a4a4ca5709ad858de04f": "d9b3d8432df219f8a3bbf80501d6ebc5",
".git/objects/ff/437213b03bb1f7ea85a1874367dd584e9524f1": "057c6b8396133333578cd4476a5e90ff",
".git/objects/ff/46a9ff0f19c17590b26ad4a99bf8b0ea78132f": "bc23e8567e025229932e7b35f8751c9b",
".git/objects/c2/de2acec1324290949b2241c8c14a01b1913091": "5b0c52a514133f5d5dd0063460f063a0",
".git/objects/cb/6b7a6137f8e01d986294349a6bc2fadc6d1849": "9df7d09456db8013ef6b3c4b23309f7a",
".git/objects/f8/f1cba3f50fa50033018a29bb8b9cf042fd14f4": "628e95cb9d5bb7aace75d77ed42c4f34",
".git/objects/ce/372b41b1b0e567ce17cdb15b8e2c3d6af5a405": "2e61182b3788d61e2fb7b7a807339e34",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/41/74f5e506377bf2cb841cbc40f5e569b5904b74": "b1f2952549810877ffe5c527f35b3638",
".git/objects/48/37533a8ffb636e111644446b8b5254d152a146": "54ab11d80a5332cf91fd2999264849ea",
".git/objects/70/a234a3df0f8c93b4c4742536b997bf04980585": "d95736cd43d2676a49e58b0ee61c1fb9",
".git/objects/8c/2855603a2d50ab386d382dd4d1e71c5bf0edcf": "6c603c81d8e04eb2d4c70a5c05e1c04e",
".git/objects/82/09f77036655d8ecf486cdd18a05782e2e620e2": "9b6cad28330df1623ec7051c0aaa1b13",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "5d88fcd01813feff1b507a9ed68e252f",
".git/logs/refs/heads/main": "b8f8a53d8d29e438c8e6e7d510d6e729",
".git/logs/refs/remotes/origin/main": "5018f015001ccf8641cc68a8ab7b300e",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/main": "047385e5f9587357be3fe080a2778426",
".git/refs/remotes/origin/main": "047385e5f9587357be3fe080a2778426",
".git/index": "6c194cea90fc809d5c336619ef7e3504",
".git/COMMIT_EDITMSG": "70cb886733059df7a7e1513a7fa71167",
"assets/AssetManifest.json": "db742fa701eb921ef0387d4622cbaf74",
"assets/NOTICES": "197c2daa69e0e0a52be99bac61ff8732",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "5e939c4808d188c5c12605ec22cdc821",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "825e75415ebd366b740bb49659d7a5c6",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "d6c9fed7864744b2358ab85d51c7b973",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/assets/images/1720.jpg": "9ef91b58f2dbd8e0dab5f160885d126c",
"assets/assets/images/github.png": "ec3a60c8c6539a07eb70b52f6737ea6e",
"assets/assets/images/person.png": "03238aa67510d0b5b541840b924cf2dd",
"assets/assets/images/profile_picture.jpeg": "4312656c4e8ae03786d0a8c15437ee43",
"assets/assets/images/joyal_jose.jpg": "1b3d98d9f87e104625fca01c8f62a99d",
"assets/assets/icons/portfolio1.png": "2342d67fe86f8006be33c6630c4fd710",
"assets/assets/icons/portfolio2.png": "22dfa28aef3dd005142055fe2c36d047",
"assets/assets/icons/photoshop_svg.png": "f6396ad66dc20149f91fa8245e268b0b",
"assets/assets/icons/portfolio3.png": "d5f115d5a099dc3421e48bc59b309959",
"assets/assets/icons/figma_svg.png": "dd680e00b352bce825039b2a94536711",
"assets/assets/icons/instagram.png": "055df8b7eb0af4477417f647d18ede0c",
"assets/assets/icons/after_effect.png": "4b2fdb927cb6910ebba09838deea51b7",
"assets/assets/icons/vector.png": "1995192abaf84f7e83e91ef829c4443a",
"assets/assets/icons/miro_svg.png": "919e2cfffaecd3083c49b21ee51a092f",
"assets/assets/icons/linkdin.png": "f3cc32ba98786a82cda2dd1b16182377",
"assets/assets/icons/illustrator.png": "9b2b5442cf3e4a12d04b276a46b2224a",
"assets/assets/icons/social-x.png": "d2a85838707bec204905572366e331e6",
"assets/assets/icons/blender.png": "edc105f6dbdf39aa336db207ff3c9b5e",
"assets/assets/icons/facebook.png": "5c0987f8aff0ef6a28dd1ffe72af9d08",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "9fe690d47b904d72c7d020bd303adf16",
"canvaskit/canvaskit.js.symbols": "27361387bc24144b46a745f1afe92b50",
"canvaskit/skwasm.wasm": "1c93738510f202d9ff44d36a4760126b",
"canvaskit/chromium/canvaskit.js.symbols": "f7c5e5502d577306fb6d530b1864ff86",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.wasm": "c054c2c892172308ca5a0bd1d7a7754b",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.wasm": "a37f2b0af4995714de856e21e882325c"};
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
