package com.sfle.core.mapper;

import com.sfle.core.pojo.TbUserFile;
import com.sfle.core.pojo.TbUserFileExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbUserFileMapper {
    int countByExample(TbUserFileExample example);

    int deleteByExample(TbUserFileExample example);

    int deleteByPrimaryKey(Integer fileId);

    int insert(TbUserFile record);

    int insertSelective(TbUserFile record);

    List<TbUserFile> selectByExample(TbUserFileExample example);

    TbUserFile selectByPrimaryKey(Integer fileId);

    int updateByExampleSelective(@Param("record") TbUserFile record, @Param("example") TbUserFileExample example);

    int updateByExample(@Param("record") TbUserFile record, @Param("example") TbUserFileExample example);

    int updateByPrimaryKeySelective(TbUserFile record);

    int updateByPrimaryKey(TbUserFile record);
}