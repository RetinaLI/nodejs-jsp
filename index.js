var fs = require('fs');
var path = require('path');
//解析需要遍历的文件夹，我这以E盘根目录为例 var filePath = path.resolve('E:');
//调用文件遍历方法
var filePath = path.resolve('../platform-iov-web/src/main/webapp');
fileDisplay(filePath);

function fileDisplay (filePath) {
	//根据文件路径读取文件，返回文件列表
	fs.readdir(filePath, function (err, files) {
		if (filePath.indexOf('pages\\mobile') > -1) return;
		console.log(filePath);
		if (err) {
			console.warn(err);
		} else {
			//遍历读取到的文件列表
			files.forEach(function (filename) {
				var filedir = path.join(filePath, filename);
				//根据文件路径获取文件信息，返回一个fs.Stats对象
				fs.stat(filedir, function (eror, stats) {
					if (eror) {
						console.warn('获取文件stats失败');
					} else {
						var isFile = stats.isFile();//是文件
						var isDir = stats.isDirectory();//是文件夹

						if (isDir) {
							fileDisplay(filedir);//递归，如果是文件夹，就继续遍历该文件夹下面的文件
						}
						if (isFile) {
							// 只读取.jsp文件
							if(filedir.indexOf('.jsp')> -1) {
								// var res = fs.writeFileSync(filedir).toString();
								// console.log(res);
								var lines = fs.readFileSync(filedir).toString().split("</script>");
								var reg1 = RegExp('<script');

								lines.forEach((val, index, array)=> {
									if(reg1.test(val)) {
										if( val.indexOf('src="${base}') > -1){
											var qIndex = val.lastIndexOf('.js');
											qIndex = qIndex+3;
											// console.log(qIndex);
											// console.log(val.charAt(qIndex));
											// 判断是否添加了版本
											if (val.charAt(qIndex) == '"'){
												// console.log(val);
												var afterAdd = val.substr(0,qIndex).concat('?ver=${v}');
												var endStr = val.substr(qIndex);
												val = afterAdd.concat(endStr);
												// console.log(val);
												array[index] = val;
											}

										}
									};
								});
								var data1 = lines.join('</script>');
								fs.writeFileSync(filedir, data1, function(error){
									if(error){
										console.log(error);
									}
								})

								// 对引入的css添加版本号
								var cssBlocks = fs.readFileSync(filedir).toString().split("<link");
								var reg2 = RegExp('href');
								cssBlocks.forEach( (value, index, array) => {
									if( reg2.test(value)){
										if( value.indexOf('href="${base}') > -1){
											var cssQ = value.indexOf('.css');
											cssQ = cssQ+4;
											// console.log(cssQ);
											if (value.charAt(cssQ) != '?' ){
												value = value.replace(/\.css/,'\.css?ver=${v}');
												array[index] = value;
											}
										}
									}
								});
								var data2 = cssBlocks.join('<link');
								fs.writeFileSync(filedir, data2, function(error){
									if(error){
										console.log(error);
									}
								});

							} else {
								return;
							}

						}
					}
				})
			});
		}
	});
}
