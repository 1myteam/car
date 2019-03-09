package org.bigjava.dao.impl;

import java.util.List;

import org.bigjava.dao.User_Dao;
import org.bigjava.domain.User;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class User_Daoimpl extends HibernateDaoSupport implements User_Dao{
	
    public int findCount(){
    	String hql="select count(*) from User";
    	List<Long> list=this.getHibernateTemplate().find(hql);
    	if(list.size() >0){
    		return list.get(0).intValue();
    	}
    	return 0;
    }
    @Override
	//登录方法
	public User findByAccountAndPassword(User user) {
		String hql="from User where account = ? and password = ?";
		List<User> list=this.getHibernateTemplate().find(hql, user.getAccount(), user.getPassword());
		if(list.size() >0) {
			return list.get(0);
		}
		return null;
	}

    /*
     * 分页查询
     */
	@Override
	public List<User> findByPage(int begin, int pageSize) {
		DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
		List<User> list = this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);	
		return list;
	}
     //保存
	@Override
	public void save(User user) {
	this.getHibernateTemplate().save(user);	
	}
    //根据id查询
	public User findById(Integer user_id){
		return this.getHibernateTemplate().get(User.class, user_id);
		
	}
	//修改
	@Override
	public void update(User user) {
		this.getHibernateTemplate().update(user);
		
	}

    //查询所有
	@Override
	public List<User> findAll() {
		
		return this.getHibernateTemplate().find("form User");
	}
    //删除
	@Override
	public void delete(User user) {
	 this.getHibernateTemplate().delete(user);	
	}
	}
