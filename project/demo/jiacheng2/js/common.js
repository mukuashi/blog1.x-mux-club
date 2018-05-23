//JS 常用函数

function dump(value) {
    console.log(value);
}

function intval($value){
	if(!$value) return 0;
	
	$value = parseInt($value);
	return isNaN($value) ? 0 : $value;
}

function getNavigator(){
	var browser = false;
	
	if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.match(/7./i)=="7.") 
	{ 
		browser = "IE7"; 
	} 
	else if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.match(/8./i)=="8.") 
	{ 
		browser = "IE8";
	} 
	else if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.match(/9./i)=="9.") 
	{ 
		browser = "IE9";
	} 
	else if(navigator.appName == "Microsoft Internet Explorer") 
	{ 
		browser = "IE6";
	} 
	return browser;
}


function floatval($value,$fixed){
	if(!$value) return 0;
	$fixed = intval($fixed);
	$fixed = $fixed ? $fixed : 2;
	
	$value = parseFloat($value);
	$value =  isNaN($value) ? 0.0 : $value;
	$value = $value.toFixed($fixed);
	return $value;
}


function in_array(needle, haystack) {
    if (!haystack) {
        return false;
    }
    for (var i in haystack) {
    	if(haystack[i] == needle){
    		return true;
    	}
    }
    return false;
}


function buildOptionHtml(options,defaultOption,valueName,showName){
	defaultOption = defaultOption ? defaultOption : '';
	valueName = valueName ? valueName : 'value';
	showName = showName ? showName : 'show';
	
	html = "<option value=''>"+defaultOption+"</option>";
	for(var i in options){
		curHtml = "";
		value = options[i][valueName];
		show = options[i][showName];
		curHtml = "<option value='"+value+"'>" + show + "</option>";
		html += curHtml;
	}
	return html;
}

function count(obj){
	var num = 0;
	for(var i in obj){
		num++;
	}
	return num;
}

function current(obj){
	for(var i in obj){
		return obj[i];
	}
}

//简单模板
function nano(template, data) {
	  return template.replace(/\{ ([\w\.]*) \}/g, function(str, key) {
	    var keys = key.split("."), v = data[keys.shift()];
	    for (var i = 0, l = keys.length; i < l; i++) v = v[keys[i]];
	    return (typeof v !== "undefined" && v !== null) ? v : "";
	  });
};


function redirect(url){
	window.location.href = url;
}

function treeToList(tree){
	var list = {};
	for(var i in tree){
		var current = tree[i];
		var sub = current['sub'];

		list[i] = current;

		if(sub){
			var subList = treeToList(sub);
			list = mergeList(list,subList);
		}
	}
	return list;
}

function mergeList(list1,list2){
	var list = list1;
	for(var i in list2){
		list[i] = list2[i];
	}
	return list;
}


/**
 * 城市联动
 * @param JSON cs_cities 联动数据 Lib_Location::GetAll
 * @param changeNode 	 触发change事件的节点
 */
function changeLocation(allLocations, changeNode){
	locationList = treeToList(allLocations);

	changeNode = changeNode ? changeNode : '.cityselect';
	$(changeNode).on("change", function(){
		var sub	   = $(this).data('sub'),
			selfId = $(this).val(),
			params = {},
			defaultOption = $(sub).find('option:eq(0)'),
			html   = '',
			_cities= null;

		if(!sub){
			return false;
		}


		clearNode($(sub));

		var location = getCurrentLocation($(this));

		if(!location){
			return false;
		}

		var subLocation = location['sub'];

		if(subLocation){
			html = buildOptionHtml(subLocation, defaultOption.text(),'id','name');
			$(sub).html(html);
			return true;
		}
	});

	var getCurrentLocation = function(node){
		var valueList = getValueList(node);
		var location;

		for (var i = 0; i < valueList.length; i++) {
			var value = valueList[i];
			if(!value){
				break;
			}
			if(i == 0){
				location = allLocations[value];
			} else {
				location = location['sub'][value];
			}
		};
		return location;
	}

	var getValueList = function(node){
		var currentValue = $(node).val();
		var parent  = $(node).data('parent');

		if(parent){
			var valueList = getValueList($(parent));
			valueList.push(currentValue);
			return valueList;
		} else {
			return [currentValue];
		}
	}

	var clearNode =function(node){
		var defaultHtml = $(node).find('option:eq(0)');
		$(node).html(defaultHtml).change();
	}

	var setDefaultLocation = function(node,defaultValue){
		defaultValue = defaultValue ? defaultValue : $(node).data('default');
		if(defaultValue){
			var location = locationList[defaultValue];
			if(location){
				var parent = $(node).data('parent');
				if(parent && location['parent_id']){
					setDefaultLocation($(parent),location['parent_id']);
				}
				$(node).val(location['id']).change();

			}
		}
	}

	////////////默认值
	$(changeNode).each(function(){
		var node = $(this);
		var parent = node.data('parent');
		if(!parent){ //顶层节点
			var defaultOption = node.find('option:eq(0)');
			var html = buildOptionHtml(allLocations, defaultOption.text(),'id','name');
			node.html(html);
		}


		setDefaultLocation(node);
	});
}

