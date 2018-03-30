package com.itheima.ssm.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itheima.ssm.mapper.MessageMapper;
import com.itheima.ssm.po.Fpxm;
import com.itheima.ssm.po.Message;
import com.itheima.ssm.po.Page;
@Service(value="messageService")
public class MessageService {
	@Autowired
	private MessageMapper messageMapper;
	
	 public List<Message> findMessageList(Message Message) throws Exception{
	    	return messageMapper.findMessageList(Message);
	    };
	    public List<Message> findMessagebyMessaget(@Param("Messaget") String Messaget) throws Exception {
			return messageMapper.findMessagebyMessaget(Messaget);
		}
	    public Message findMessagebyid(Integer id) {
	    	Message Message = messageMapper.findMessagebyid(id);
	        return Message; 
		}
	    public void updateMessage(Message Message) {
	    	messageMapper.updateMessage(Message);
		}  
	    public void deleteMessage(Integer id) {
	    	messageMapper.deleteMessage(id);
		}
	    public int insertMessage(String user,String mnr) {
	    	Message message=new Message();
	    	message.setMuser(user);
	    	message.setMnr(mnr);
	    	message.setCreatedate(new Date());
			return messageMapper.insertMessage(message);
		}
	    public long getAllMessageCount() {
			return messageMapper.getAllMessageCount();
		}
		public List<Message> getMessageList(Page page) {
			return messageMapper.getMessageList(page);
		}
}
