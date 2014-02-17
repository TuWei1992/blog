package org.com.blog.model;

	import java.util.Date;


	import org.nutz.dao.entity.annotation.Id;
	import org.nutz.dao.entity.annotation.Name;
	import org.nutz.dao.entity.annotation.Table;



	/**
	 * 文章
	 * 
	 * @author zhimeiyue
	 */
	@Table("t_type")
	public class Type implements java.io.Serializable {
		private static final long serialVersionUID = -7679909637903047354L;
		@Id
		private int id;
		
		@Name
		private String name = "";
		private int count ;
		

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getname() {
			return name;
		}

		public void setname(String name) {
			this.name = name;
		}

		public int getcount() {
			return count;
		}

		public void setcount(int count) {
			this.count = count;
		}

		
	}


