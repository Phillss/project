package com.dao;

import com.Domains.Sanswer;
import com.Domains.Singles;

import java.util.List;

public interface sanswerMapper {

    List<Sanswer> selectDisAnsFrOCC(Sanswer sanswer);

    List<Singles> selectSingles(Singles singles);
}
