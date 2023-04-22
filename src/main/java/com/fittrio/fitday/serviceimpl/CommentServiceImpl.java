package com.fittrio.fitday.serviceimpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fittrio.fitday.dao.CommentDAO;
import com.fittrio.fitday.dto.CommentDTO;
import com.fittrio.fitday.service.CommentService;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	CommentDAO dao;

	@Override
	public List<CommentDTO> getCommentListByBoardSeq(int boardSeq) {
		return dao.getCommentListByBoardSeq(boardSeq);
	}
	
	@Override
	public void insertComment(CommentDTO commentDto) {
		dao.insertComment(commentDto);
	}
	
	@Override
	public void deleteComment(int commentSeq) {
		dao.deleteComment(commentSeq);
	}
	
	@Override
	public void updateComment(HashMap<String, Object> map) {
		dao.updateComment(map);
	}
	
}
