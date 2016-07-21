package nwsuaf.mmloo.dao;

import java.util.List;

import nwsuaf.mmloo.entity.Comment;

public interface ICommentDao {

	/**
	 * @param mkid
	 * @return 根据店号和组号查询评论列表
	 */
	List<Comment> selectByMkid(String mkid);

	int insert(Comment record);

	int delete(int commentid);
}
