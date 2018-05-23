(function() {
  var Tasks = function() {
    var nudge = function() {
      setTimeout(function(){ window.scrollTo(0,0); }, 1000);
    }
    var jump = function() {
      switch(location.hash) {
        case '#add':
          document.body.className = 'add';
          break;
        case '#settings':
          document.body.className = 'settings';
          break;
        default:
          document.body.className = 'list';
      }
      nudge();
    }
    jump();
    window.addEventListener('hashchange', jump, false);
    window.addEventListener('orientationchange', nudge, false);
    // 5.5
    var localStorageAvailable = ('localStorage' in window);
    var loadSettings = function() {
      if(localStorageAvailable) {
        var name = localStorage.getItem('name'),
            colorScheme = localStorage.getItem('colorScheme'),
            nameDisplay = document.getElementById('user_name'),
            nameField = document.forms.settings.name,
            doc = document.documentElement,
            colorSchemeField = document.forms.settings.color_scheme;

        if(name) {
          nameDisplay.innerHTML = name+"";
          nameField.value = name;
        } else {
          nameDisplay.innerHTML = '我的';
          nameField.value = '';
        }
        if(colorScheme) {
          doc.className = colorScheme.toLowerCase();
          colorSchemeField.value = colorScheme;
        } else {
          doc.className = 'blue';
          colorSchemeField.value = 'Blue';
        }
      }
    }
    // 5.6
    var saveSettings = function(e) {
      e.preventDefault();
      if(localStorageAvailable) {
        var name = document.forms.settings.name.value;
        if(name.length > 0) {
          var colorScheme = document.forms.settings.color_scheme.value;
          localStorage.setItem('name', name);
          localStorage.setItem('colorScheme', colorScheme);
          loadSettings();
          alert('设置保存成功', '保存设置');
          location.hash = '#list';
        } else {
          alert('请输入您的昵称', '设置保存失败');
        }
      } else {
        alert('您的浏览器暂时不支持缓存哟', '设置保存失败');
      }
    }
    // 5.7
    var resetSettings = function(e) {
      e.preventDefault();
      if(confirm('您确定要清除所有数据和设置?', '初始化')) {
        if(localStorageAvailable) {
          localStorage.clear();
        }
        loadSettings();
        alert('应用数据已全部被清除', '格式化成功');
        location.hash = '#list';
        dropDatabase();
      }
    }
    // 5.8
    loadSettings();
    document.forms.settings.addEventListener('submit', saveSettings, false);
    document.forms.settings.addEventListener('reset', resetSettings, false);
    // 5.9
    var indexedDB = window.indexedDB || window.webkitIndexedDB
    || window.mozIndexedDB || window.msIndexedDB || false,
        IDBKeyRange = window.IDBKeyRange || window.webkitIDBKeyRange
    || window.mozIDBKeyRange || window.msIDBKeyRange || false,
        webSQLSupport = ('openDatabase' in window);
    // 5.10
    var db;
    var openDB = function() {
      if(indexedDB) {
        var request = indexedDB.open('tasks', 1),
            upgradeNeeded = ('onupgradeneeded' in request);
        request.onsuccess = function(e) {
          db = e.target.result;
          if(!upgradeNeeded && db.version != '1') {
            var setVersionRequest = db.setVersion('1');
            setVersionRequest.onsuccess = function(e) {
              var objectStore = db.createObjectStore('tasks', {
                keyPath: 'id'
              });
              objectStore.createIndex('desc', 'descUpper', {
                unique: false
              });
              loadTasks();
            }
          } else {
            loadTasks();
          }
        }
        if(upgradeNeeded) {
          request.onupgradeneeded = function(e) {
            db = e.target.result;
            var objectStore = db.createObjectStore('tasks', {
              keyPath: 'id'
            });
            objectStore.createIndex('desc', 'descUpper', {
              unique: false
            });
          }
        }
      } else if(webSQLSupport) {
        db = openDatabase('tasks','1.0','Tasks database',(5*1024*1024));
        db.transaction(function(tx) {
          var sql = 'CREATE TABLE IF NOT EXISTS tasks ('+
              'id INTEGER PRIMARY KEY ASC,'+
              'desc TEXT,'+
              'due DATETIME,'+
              'complete BOOLEAN'+
              ')';
          tx.executeSql(sql, [], loadTasks);
        });
      }
    }
    openDB();
    // 5.11
    var createEmptyItem = function(query, taskList) {
      var emptyItem = document.createElement('li');
      if(query.length > 0) {
        emptyItem.innerHTML = '<div class="item_title">'+
          '您还没有添加过这条干货哟 <strong>'+query+'</strong>.'+
          '</div>';
      } else {
        emptyItem.innerHTML = '<div class="item_title">'+
          '干货列表为空哟 <a href="#add">新建？</a>'+
          '</div>';
      }
      taskList.appendChild(emptyItem);
    }
    var showTask = function(task, list) {
      var newItem = document.createElement('li'),
          checked = (task.complete == 1) ? ' checked="checked"' : '';
      newItem.innerHTML =
        '<div class="item_complete">'+
        '<input type="checkbox" name="item_complete" '+
        'id="chk_'+task.id+'"'+checked+'>'+
        '</div>'+
        '<div class="item_delete">'+
        '<a href="#" id="del_'+task.id+'">删除</a>'+
        '</div>'+
        '<div class="item_title">'+task.desc+'</div>'+
        '<div class="item_due">'+task.due+'</div>';
      list.appendChild(newItem);
      var markAsComplete = function(e) {
        e.preventDefault();
        var updatedTask = {
          id: task.id,
          desc: task.desc,
          descUpper: task.desc.toUpperCase(),
          due: task.due,
          complete: e.target.checked
        };
        updateTask(updatedTask);
      }
      var remove = function(e) {
        e.preventDefault();
        if(confirm('您确定要删除该条干货?', '删除')) {
          deleteTask(task.id);
        }
      }
      document.getElementById('chk_'+task.id).onchange =
        markAsComplete;
      document.getElementById('del_'+task.id).onclick = remove;
    }
    // 5.12
    var loadTasks = function(q) {
      var taskList = document.getElementById('task_list'),
          query = q || '';
      taskList.innerHTML = '';
      if(indexedDB) {
        var tx = db.transaction(['tasks'], 'readonly'),
            objectStore = tx.objectStore('tasks'), cursor, i = 0;
        if(query.length > 0) {
          var index = objectStore.index('desc'),
              upperQ = query.toUpperCase(),
              keyRange = IDBKeyRange.bound(upperQ, upperQ+'z');
          cursor = index.openCursor(keyRange);
        } else {
          cursor = objectStore.openCursor();
        }
        cursor.onsuccess = function(e) {
          var result = e.target.result;
          if(result == null) return;
          i++;
          showTask(result.value, taskList);
          result['continue']();
        }
        tx.oncomplete = function(e) {
          if(i == 0) { createEmptyItem(query, taskList); }
        }
      } else if(webSQLSupport) {
        db.transaction(function(tx) {
          var sql, args = [];
          if(query.length > 0) {
            sql = 'SELECT * FROM tasks WHERE desc LIKE ?';
            args[0] = query+'%';
          } else {
            sql = 'SELECT * FROM tasks';
          }
          var iterateRows = function(tx, results) {
            var i = 0, len = results.rows.length;
            for(;i<len;i++) {
              showTask(results.rows.item(i), taskList);
            }
            if(len === 0) { createEmptyItem(query, taskList); }
          }
          tx.executeSql(sql, args, iterateRows);
        });
      }
    }
    // 5.13
    var searchTasks = function(e) {
      e.preventDefault();
      var query = document.forms.search.query.value;
      if(query.length > 0) {
        loadTasks(query);
      } else {
        loadTasks();
      }
    }
    document.forms.search.addEventListener('submit', searchTasks, false);
    // 5.14
    var insertTask = function(e) {
      e.preventDefault();
      var desc = document.forms.add.desc.value,
          dueDate = document.forms.add.due_date.value;
      if(desc.length > 0 && dueDate.length > 0) {
        var task = {
          id: new Date().getTime(),
          desc: desc,
          descUpper: desc.toUpperCase(),
          due: dueDate,
          complete: false
        }
        if(indexedDB) {
          var tx = db.transaction(['tasks'], 'readwrite');
          var objectStore = tx.objectStore('tasks');
          var request = objectStore.add(task);
          tx.oncomplete = updateView;

        } else if(webSQLSupport) {
          db.transaction(function(tx) {
            var sql = 'INSERT INTO tasks(desc, due, complete) '+
                'VALUES(?, ?, ?)',
                args = [task.desc, task.due, task.complete];
            tx.executeSql(sql, args, updateView);
          });
        }
      } else {
        alert('请填写完整的干货信息', '添加干货失败');
      }
    }
    function updateView(){
      loadTasks();
      alert('干货新建成功', '恭喜您添加成功');
      document.forms.add.desc.value = '';
      document.forms.add.due_date.value = '';
      location.hash = '#list';
    }
    document.forms.add.addEventListener('submit', insertTask, false);
    // 5.15
    var updateTask = function(task) {
      if(indexedDB) {
        var tx = db.transaction(['tasks'], 'readwrite');
        var objectStore = tx.objectStore('tasks');
        var request = objectStore.put(task);
      } else if(webSQLSupport) {
        var complete = (task.complete) ? 1 : 0;
        db.transaction(function(tx) {
          var sql = 'UPDATE tasks SET complete = ? WHERE id = ?',
              args = [complete, task.id];
          tx.executeSql(sql, args);
        });
      }
    }
    var deleteTask = function(id) {
      if(indexedDB) {
        var tx = db.transaction(['tasks'], 'readwrite');
        var objectStore = tx.objectStore('tasks');
        var request = objectStore['delete'](id);
        tx.oncomplete = loadTasks;
      } else if(webSQLSupport) {
        db.transaction(function(tx) {
          var sql = 'DELETE FROM tasks WHERE id = ?',
              args = [id];
          tx.executeSql(sql, args, loadTasks);
        });
      }
    }
    // 5.16
    var dropDatabase = function() {
      if(indexedDB) {
        var delDBRequest = indexedDB.deleteDatabase('tasks');
        delDBRequest.onsuccess = window.location.reload();
      } else if(webSQLSupport) {
        db.transaction(function(tx) {
          var sql = 'DELETE FROM tasks';
          tx.executeSql(sql, [], loadTasks);
        });
      }
    }
    // 5.18
    if('applicationCache' in window) {
      var appCache = window.applicationCache;
      appCache.addEventListener('updateready', function() {
        appCache.swapCache();
        if(confirm('有新的数据添加现在是否更新呢?')) {
          w.location.reload();
        }
      }, false);
    }
  }
  window.addEventListener('load', function() {
    new Tasks();
  }, false);
})();





