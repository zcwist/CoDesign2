Ext.onReady(function(){
	Ext.create('Ext.Viewport',{
		layout:'fit',
		items:[{
			xtype:"panel",
			title:"welcome",
			html:"<h1 style='text-align:center;font-size:60px;font-weigth:bold;'>Hello World</h1>"
		}]
	});
	Ext.define("Calculator",{
		constructor:function(){
			return this;
		},
		plus:function(v1,v2){
			return v1+v2;
		},
		minus:function(v1,v2){
			return v1-v2;
		},
		multiply:function(v1,v2){
			return v1*v2;
		},
		divid:function(v1,v2){
			return v1/v2;
		}
	});
	var cal = new Calculator();
	console.log(cal.plus(87,28));
	
	Ext.define('NewCalculator',{
		extend:'Calculator',
		hex:function(v1){
			return v1.toString(16);
		}
	});
	
	Ext.define('HEX',{
		hex:function(v1){
			return v1.toString(16);
		}
	});
	
	Ext.define('BIN',{
		bin:function(v1){
			return v1.toString(2);
		}
	});	

	Ext.define('OCT',{
		oct:function(v1){
			return v1.toString(8);
		}
	});	

	Ext.define('NewCalculator',{
		extend:'Calculator',
		mixins:{
			Hex:'HEX',
			Bin:'BIN',
			Oct:'OCT'
		},
		convert:function(value,type){
			switch(type){
			case 2:
				return this.bin(value)
				break;
			case 8:
				return this.oct(value)
				break;
			default:
				return this.mixins.Hex.hex.call(this,value);
				break;
			}
		}
	});
	
	var ncal = new NewCalculator();
	console.log(ncal.convert(25,8));

	Ext.define("Convert",{
		config:{
		type:"hex"
		},
		type_num:16,
		constructor:function(config){
			this.initConfig(config);	//自动生成applyType,setType,getType,resetType四种方法
			return this;
		},
		applyType:function(type){
			this.type_num = type == "hex" ? 16 : (type=="oct" ? 8:2);
			return type;
		},
		convert:function(v){
			return v.toString(this.type_num);
		}
	});
	var cv = new Convert();
	cv.setType(2);
	console.log(cv.convert(29));

	Ext.define("Convert",{
		statics:{
			hex:function(v){
				return v.toString(16);
				},
		
			bin:function(v){
				return v.toString(2);
				},
			oct:function(v){
				return v.toString(8);
				}
		},
		constructor:function(config){
			return this;
		}
	});
	console.log(Convert.hex(29));
});
