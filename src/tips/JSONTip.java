/**
 *@author kiwi
 * JSON操作范例
 */

package tips;

import java.util.Map;
import java.util.Set;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class JSONTip {
	public static void main(String args[]) {
	  parseJSON();
    }
	 
	void createJson(){
		//新建Json数组
		JsonArray array = new JsonArray();
		
		//新建Json对象
		JsonObject obj = new JsonObject();
		
		//Json对象增加属性
		obj.addProperty("id", 1);
		
		//Json数组增加元素
		array.add(obj);
		
		JsonObject json = new JsonObject();
		//Json对象增加数组元素
		json.add("rows", array);
	}

	static void parseJSON(){
		String jsonArr = "[" +
						"{id:'12345',title:'article1',author:'a'}," +
						"{id:'12367',author:'z'}," +
						"{id:'17777',isShow:true}" +
						"]";
		
		//构造解析器
		JsonParser jparser = new JsonParser();
		
		//读取字符串，解析为Json数组
		JsonArray ja = jparser.parse(jsonArr).getAsJsonArray();
		
		//遍历Json数组
		for (JsonElement je : ja) {
			JsonObject jo = je.getAsJsonObject();
			Set<Map.Entry<String, JsonElement>> jset = je.getAsJsonObject().entrySet();
			String id = jo.get("id").getAsString();
			
			//针对key值不确定的情况
			for (Map.Entry<String, JsonElement> map : jset){
				String key = map.getKey();
				System.out.println("key:" + key);
				if (key != "id") {
					String value = map.getValue().toString();
					System.out.println("value:" + value);
					
				}
			}
			
		}
		
	}

}
