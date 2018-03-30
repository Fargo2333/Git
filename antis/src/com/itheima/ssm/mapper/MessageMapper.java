package com.itheima.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.ssm.po.Message;
import com.itheima.ssm.po.Page;

public interface MessageMapper {
    int deleteByPrimaryKey(Integer mid);
    int insert(Message record);
    int insertSelective(Message record);
    Message selectByPrimaryKey(Integer mid);
    int updateByPrimaryKeySelective(Message record);
    int updateByPrimaryKey(Message record);
    public List<Message> findMessageList(Message Message) throws Exception;
    public List<Message> findMessagebyMessaget(@Param("Messaget") String Messaget) throws Exception;
    public Message findMessagebyid(Integer id);
    public void updateMessage(Message Message);  
    public void deleteMessage(Integer id);
    public int insertMessage(Message Message);
    public long getAllMessageCount();
	public List<Message> getMessageList(Page page);
  
}