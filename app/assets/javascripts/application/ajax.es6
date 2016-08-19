function ajax(type, url) {
  return new Promise(function(resolve, reject) {
    let req = new XMLHttpRequest();
    req.open(type, url);
    req.onload = function() {
      if (req.status === 200) {
          resolve(JSON.parse(req.response));
      } else {
          reject(new Error(req.statusText));
      }
    };

    req.onerror = function() {
      reject(new Error("Network error"));
    };

    req.send();
  });
}
